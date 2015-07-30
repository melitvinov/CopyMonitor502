unit FormulUtil;

interface
uses Classes, StrUtils, FConstType, FController, PicCtr, MessageU;

const
  // ОПИСАНИЯ ВОЗМОЖНЫХ ОШИБОК СИНТАКСИСА (MC - Mistake Code)
  MC_NOERROR=0;
  MC_INVALIDCHAR=1;
  MC_UNKNOWNFUNC=2;
  MC_INVALIDNUMBER=3;
  MC_LOSTOPERATOR=4;
  MC_INVALIDBRACKETS=5;
  MC_LOSTNUMBER=6;
  MC_INVALIDSTRUCTURE=7;
  MC_FUNCTIONERROR=8;
  
const
  FUNC_LOAD='VAL';
  FUNC_RULE='RULE';
  // символьные названия логических операций LO_ (Logical Operations)
//  LO_AND='И';
//  LO_OR='ИЛИ';
//  LO_NOT='НЕ';
  L_AND=332;  //'И';
  L_OR=333;   //'ИЛИ';
  L_NOT=334;  //'НЕ';



type
  TFormula = class (TComponent)
  private
    FActCtr:TFPicCtr;
    // хранитель текущей строки с текстом формулы
    FFormulText:string;
    // получение статуса результата:  true - булеывый, false - числовой
    FResultStatus:boolean;
    // числовой результат
    FFloatResult:extended;
    // булевый рез-т
    FBoolResult:boolean;
    // код ошибки
    FMistakeCode:byte;
    // позиция ошибки
    FMistakePos:word;
//    FHotBlock:TBlock;
//    FAuditBlock:TBlock;
    // процедура записи строки формулы
//    property Text:string read FFormulText write SetFormulText;
    property MistakePosition:word read FMistakePos;
    // флаг типа результата: true - логический, false  - числовой
    property IsBoolean:boolean read FResultStatus;
    // логический результат
    property BoolResult:boolean read FBoolResult;
    // числовой результат
    property FloatResult:extended read FFloatResult;
//    function GetBlockValue(v:extended):extended;
  public
    procedure SetFormulText(aFormulText:string);
    // код ошибки (см константы MC_ )
    property MistakeCode:byte read FMistakeCode;
    // расположение ошибки в тексте
    function GetMistakeText:string;
//    function BlockCalc(vX,vY:integer;Block:TBlock):boolean;
    function CalcFromText(aStr:string; Ctr:TFPicCtr):FormulResult;
//    function CalcFromText(aStr:string;vHotBlock:TBlock):FormulResult;
  end;

//procedure Register;
function GetFuncAddress(FuncName:string):pointer;

var  Formula:TFormula;
//  NewStr:string;  // фомируемая упрощенная строка

implementation
uses
  SysUtils, Math, audit;

const
  // КОНСТАНТЫ ДЛЯ ОПРЕДЕЛЕНИЯ ОПЕРАЦИЙ В ВЕКТОРЕ TCodeOZ
  CM_PUSH=0;
  CM_MINUS=1;
  CM_PLUS=2;
  CM_MUL=3;
  CM_DIV=4;
  CM_CALC=5;

  // КОНСТАНТЫ ЛОГИЧЕСКИХ ОПЕРАЦИЙ
  CM_OR=6;
  CM_AND=7;
  CM_NOT=8;
  CM_BIGGER=9;
  CM_SMALLER=10;
  CM_IS=11;
  CM_NOBIGGER=12;
  CM_NOSMALLER=13;
  CM_ISNOT=14;

  // символы, которые запрещено использовать в строке формулы
  InvalidChars='&^!#$?<>={}';
  // а по этим символам можно судить о том, что преобразованная строка - с логикой
  InvalidCharsEx='&^!#$?<>=';

type
  TParamPtr=function(x:extended):extended;

  // ввожу свой тип - "КОД ОБРАТНОЙ ЗАПИСИ"
  TCodeOZ=record
    CodeData:array[0..200] of integer; // здесь хранятся исключительно коды операций
    PCode:integer; // счетчик для записи в CodeData через рекурсию
    Reals:array[0..100] of Extended; // здесь хранятся операторы для вычисления
    PReals:integer;// счетчик для записи в Reals через рекурсию
    ParamData:array[0..100]of TParamPtr;// массив с указателями на функции, присутствующие в вычислениях
    PParam:integer; // Вездесущий счетчик
  end;

  // еще одна обратная запись - на сей раз для логики
  TBoolCodeOZ=record
    CodeData:array[0..200] of integer; // здесь хранятся исключительно коды логических операций
    PCode:integer; // счетчик для записи в CodeData через рекурсию
    Reals:array[0..100] of Extended; // здесь хранятся числа - надо же че-то сравнивать!
    PReals:integer;// счетчик для записи в Reals через рекурсию
  end;

  // тип для определения ошибки (ее типа и положения)
  TMistake=record
    aMistakeCode:byte;
    aMistakePos:word;
  end;


function InvalidChar(aChar:string):boolean;
// проверка на наличие недопустимых символов в строке
begin
  Result:=(StrPos(PChar(InvalidChars), PChar(aChar))<>nil);
end;

function InvalidCharEx(aChar:string):boolean;
// проверка на наличие недопустимых символов в строке
begin
  Result:=(StrPos(PChar(InvalidCharsEx), PChar(aChar))<>nil);
end;

function GetFuncName(aStrWithFunc:string):string;
// из выражения типа { функция(12345)} выбирается имя ф-и
var
  i:word;
  aFuncName:string;
begin
  aFuncName:='';
  for i:=2 to Length(aStrWithFunc)-3 do
  if not (aStrWithFunc[i]='(') then aFuncName:=aFuncName+aStrWithFunc[i]
  else break;
  Result:=aFuncName;
end;

function GetFuncParams(aStrWithFunc:string):string;
// из выражения типа { функция(12345)} выбирается все, что в скобках
var
  i:word;
  aFuncParams:string;
begin
  i:=1;
  aFuncParams:='';
  while not (aStrWithFunc[i]='(') do
  inc(i);

  inc(i);
  while i<Length(aStrWithFunc)-1 do
  begin
    aFuncParams:=aFuncParams+aStrWithFunc[i];
    inc(i);
  end;
  Result:=aFuncParams;
end;

function CheckForMistakes(var aStr:string):TMistake;
var
  i:word;
  FuncStr:string;// здесь будет запоминаться имя каждой функции
  FuncBrackets:array of Shortint; // счетчик внутренних скобок для функций - функции м.б. бесконечно вложены => динамич. массив
  FuncCount:byte;// счетчик вложенных функций
  aMistakeCode:Shortint;// собтвенно, код ошибки
  NewStr:string;// формируемая новая строка

  Brackets:Shortint;// счетчик незакрытых скобок (всегда положителен, и в конце равен 0)

  FirstPos, // флаг первой позиции, которой не предшествует мат. оператор (10+...)
  FuncClosed, // сигнал о закрытии функции спец. символом "}"
  PointFlag, // флаг разделяющей точки
  MathFlag, // флаг мат. оператора - +-/*
  FuncFlag,// флаг ввода имени функции
  NumberFlag:boolean;// флаг ввода числа

begin
  aMistakeCode:=MC_NOERROR; //ПОКА ОШИБОК НЕТ
  NewStr:=''; // формируемая строка пока пуста
  i:=1;
  FuncClosed:=false;
  NumberFlag:=false;
  FuncFlag:=false;
  MathFlag:=false;
  PointFlag:=false;
  FuncCount:=0;
  Brackets:=0;
  FirstPos:=true;
  // проверка на наличие синтаксических ошибок
  // считать ошибкой?
  // 1) некомпенсированные скобки  123)*(12+10/(1,1+2)
  // 2) потерянный оператор        123(1210Func1(123)/(1,1+2))
  // 3) потеряный операнд          123*/12+
  // 4) неизвестную функцию        123*(UnknownFunc(55/789+2)+10)-KnownFunc(55)
  // 5) число записано некорректно 123.456.789+20-.12.6
  // пожалуй, все...
  while i<=Length(aStr) do
  begin
    case aStr[i] of
      '(':
      begin
        // левая скобка - увеличим счетчик
        inc(brackets);
        // если рассматриваем не закрытую пока функцию, то посчитаем и ее
        if (FuncCount>0)and(not FuncFlag) then inc(FuncBrackets[FuncCount-1]);
        // если шло число, а потом сразу скобка - ошибка
        if NumberFlag then aMistakeCode:=MC_LOSTOPERATOR;
        // а теперь смотрим, не начало ли это операнда функции
        if FuncFlag then
        begin
          if GetFuncAddress(FuncStr)=nil then aMistakeCode:=MC_UNKNOWNFUNC;
          inc(FuncCount);
          SetLength(FuncBrackets,FuncCount);
          FuncBrackets[FuncCount-1]:=1;
        end;
        MathFlag:=false;
        FirstPos:=true;
        FuncFlag:=false;
       end;

      ')':
      begin
        // если предшествовал ввод функции, то аргументов у нее нет
        if FuncFlag then
        begin
          NewStr:=NewStr+'()}';
          // ... если она существует
          if GetFuncAddress(FuncStr)=nil then aMistakeCode:=MC_UNKNOWNFUNC;
        end;
        // правая скобка - уменьшим счетчик
        dec(brackets);
        // если рассматриваем не закрытую пока функцию, то посчитаем и ее
        if FuncCount>0 then dec(FuncBrackets[FuncCount-1]);
        if Brackets<0 then aMistakeCode:=MC_INVALIDBRACKETS;
        if MathFlag then aMistakeCode:=MC_LOSTNUMBER;
        // а теперь глянем, не закрыли ли мы функцию
        if FuncCount>0 then
        if FuncBrackets[FuncCount-1]=0 then
        begin
          Dec(FuncCount);
          SetLength(FuncBrackets, FuncCount);
          FuncClosed:=true;
        end;
        FuncFlag:=false;
        NumberFlag:=false;
      end;

      '1','2','3','4','5','6','7','8','9','0'://это кусочек числа или продолжение функции
      if not FuncFlag then
      begin
        // если понеслось число, а перед ним ниче не стоит из мат операторов +-*/, то эт не харашо
        if (not NumberFlag) and (not FirstPos) and (not MathFlag) then aMistakeCode:=MC_LOSTOPERATOR;

        // самое удачное место для сброса флага точек (если число тока начали вводить)
        if not (NumberFlag) then PointFlag:=false;
        NumberFlag:=true;
        MathFlag:=false;
        FirstPos:=false;
      end else FuncStr:=FuncStr+aStr[i];

      ',','.': // разделяющяя точка
      begin
        //точки в имени функии... хм... не - не разрешу, мало ли что?
        if FuncFlag then aMistakeCode:=MC_UNKNOWNFUNC;
        // число начинается с точки - непорядок!
        if not NumberFlag then NewStr:=NewStr+'0';
        // две запятые - это слишком
        if PointFlag then aMistakeCode:=MC_INVALIDNUMBER;
        NumberFlag:=true;
        PointFlag:=true;
        aStr[i]:='.'; // запятая не всегда правильно понимается... заменю на точку
      end;

      '+','-','*','/': //математика
      begin
        // если */+ начинаются без числа перед ними - плохо
        if FirstPos and (aStr[i]<>'-') then aMistakeCode:=MC_LOSTNUMBER;
        // правим безоперандовую функцию
        if FuncFlag then
        begin
          NewStr:=NewStr+'()}';
          if GetFuncAddress(FuncStr)=nil then aMistakeCode:=MC_UNKNOWNFUNC;
          FuncFlag:=false;
        end;
        // два оператора подряд
        if MathFlag then aMistakeCode:=MC_LOSTNUMBER;
        MathFlag:=true;
        NumberFlag:=false;
      end;

      else if aStr[i]<>' ' then
      begin
        // помечаем начало функции
        if not FuncFlag then
        begin
          NewStr:=NewStr+'{';
          FuncStr:=aStr[i];
        end else FuncStr:=FuncStr+aStr[i];
        // число, а потом функция - пропущен оператор
        if NumberFlag then aMistakeCode:=MC_LOSTOPERATOR;
        // если понеслась функция, а перед ней ниче не стоит из мат операторов +-*/, то эт не харашо
        if (not FuncFlag) and (not FirstPos) and (not MathFlag) then aMistakeCode:=MC_LOSTOPERATOR;
        FuncFlag:=true;
        MathFlag:=false;
        FirstPos:=false;
      end;
    end;{case}

    if not(aMistakeCode=MC_NOERROR) then break;
    if aStr[i]<>' ' then NewStr:=NewStr+aStr[i];
    if FuncClosed then
    begin
      FuncClosed:=false;
      NewStr:=NewStr+'}';
    end;
    inc(i);
  end;{while}

  // а теперь посмотрим, че получилось опосля последнего символа
  if i>Length(aStr) then
  begin
    if FuncFlag then
    begin
      NewStr:=NewStr+'()}';
      if GetFuncAddress(FuncStr)=nil then aMistakeCode:=MC_UNKNOWNFUNC;
    end;
    // закончилось все оператором - просто ужасно
    if MathFlag then aMistakeCode:=MC_LOSTNUMBER;
    // не сошелся счетчик - плохо
    if (Brackets<>0)and(aMistakeCode=MC_NOERROR)then aMistakeCode:=MC_INVALIDBRACKETS;
    // на всякий случай проверим, чтоб i не превышал длину формулы (на будущее)
    i:=Length(aStr);
  end;

    aStr:=NewStr;
    Result.aMistakeCode:=aMistakeCode;
    Result.aMistakePos:=i;
//  Form1.Memo2.Lines.Add(aStr);
end;


procedure ParseFormula(aStr:string; var aCodeOZ:TCodeOZ);
// синтаксический разбор формулы для преобразования ее в формализованную структутру aCodeOZ
var
  FuncName:string;
  Brackets,FuncBrackets,// счетчики скобок (){}
  i,Err:integer;
  a:extended;

begin
  Brackets:=0;
  FuncBrackets:=0;
  // ИЩЕМ МАТЕМАТИЧЕСКИЕ ОПЕРАТОРЫ + И -
  for i:=Length(aStr) downto 1 do
  case aStr[i] of
    ')':inc(Brackets);
    '(':dec(Brackets);
    '{':inc(FuncBrackets);
    '}':dec(FuncBrackets);

    '+'://**************************
    if (Brackets=0)and(FuncBrackets=0) then
    begin
      ParseFormula(Copy(aStr,1,i-1), aCodeOZ);
      ParseFormula(Copy(aStr,i+1,Length(aStr)),aCodeOZ);
      aCodeOZ.CodeData[aCodeOZ.PCode]:=CM_PLUS;
      inc(aCodeOZ.PCode);
      exit;
    end;
    '-'://**************************
    if (Brackets=0)and(FuncBrackets=0) then
    begin
      ParseFormula(Copy(aStr,1,i-1), aCodeOZ);
      ParseFormula(Copy(aStr,i+1,Length(aStr)),aCodeOZ);
      aCodeOZ.CodeData[aCodeOZ.PCode]:=CM_MINUS;
      inc(aCodeOZ.PCode);
      exit;
    end;
  end;

  // ТЕПЕРЬ МАТЕМАТИЧЕСКИЕ ОПЕРАТОРЫ * И /
  for i:=Length(aStr) downto 1 do
  case aStr[i] of
    ')':inc(Brackets);
    '(':dec(Brackets);
    '{':inc(FuncBrackets);
    '}':dec(FuncBrackets);
    '*'://**************************
    if (Brackets=0)and(FuncBrackets=0) then
    begin
      ParseFormula(Copy(aStr,1,i-1), aCodeOZ);
      ParseFormula(Copy(aStr,i+1,Length(aStr)),aCodeOZ);
      aCodeOZ.CodeData[aCodeOZ.PCode]:=CM_MUL;
      inc(aCodeOZ.PCode);
      exit;
    end;
    '/'://**************************
    if (Brackets=0)and(FuncBrackets=0) then
    begin
      ParseFormula(Copy(aStr,1,i-1), aCodeOZ);
      ParseFormula(Copy(aStr,i+1,Length(aStr)),aCodeOZ);
      aCodeOZ.CodeData[aCodeOZ.PCode]:=CM_DIV;
      inc(aCodeOZ.PCode);
      exit;
    end;
  end;

  // Все - перед нами так называемый ФАКТОР, который является либо конечниым числом,
  // либо новым выражением (просто в скобки взят), либо это ваще формула {в фигурных скобках}
  val(aStr,a,Err);

  // число ли это?
  if Err=0 then
  begin
    aCodeOZ.CodeData[aCodeOZ.PCode]:=CM_PUSH;
    inc(aCodeOZ.PCode);
    aCodeOZ.Reals[aCodeOZ.PReals]:=a;
    inc(aCodeOZ.PReals);
    exit;
  end;

  // пустую строку заменяем на нуль - "-123=0-123"
  if aStr='' then
  begin
    aCodeOZ.CodeData[aCodeOZ.PCode]:=CM_PUSH;
    inc(aCodeOZ.PCode);
    aCodeOZ.Reals[aCodeOZ.PReals]:=0;
    inc(aCodeOZ.PReals);
    exit;
  end;

  // В противном случае это выражение, заключенное в скобки...
  // может, это функция?
  if aStr[1]='{' then
  begin
    FuncName:=GetFuncName(aStr);
    ParseFormula(GetFuncParams(aStr),aCodeOZ);
    aCodeOZ.ParamData[aCodeOZ.PParam]:=GetFuncAddress(FuncName);
    inc(aCodeOZ.PParam);
    aCodeOZ.CodeData[aCodeOZ.PCode]:=CM_CALC;
    inc(aCodeOZ.PCode);
    exit;
  end;

  // Все - это просто выражение в скобках! Отбрасываем скобки и все по новой...
  ParseFormula(Copy(aStr,2,Length(aStr)-2),aCodeOZ);
end;


function Calculate(aCodeOZ:TCodeOZ;var Crash:boolean):extended;
// получение результата по формализованной структуре
var
  aPCode,aPReals,aPParams:word;
  NumbersPointer:byte;
  NumbersStack: array[0..10] of extended;
begin
  Crash:=false;
  aPCode:=0;
  aPReals:=0;
  aPParams:=0;
  NumbersPointer:=0;
  while aPCode < aCodeOZ.PCode do
  begin
    Case aCodeOZ.CodeData[aPCode] of

      CM_PUSH://--------------------вставка числа
      begin
        NumbersStack[NumbersPointer]:=aCodeOZ.Reals[aPReals];
        inc(aPReals);
        inc(NumbersPointer);
      end;

      CM_MINUS://-------------------вычитание
      begin
        dec(NumbersPointer);
        NumbersStack[NumbersPointer-1]:=NumbersStack[NumbersPointer-1]-NumbersStack[NumbersPointer];
      end;

      CM_PLUS://-------------------сложение
      begin
        dec(NumbersPointer);
        NumbersStack[NumbersPointer-1]:=NumbersStack[NumbersPointer-1]+NumbersStack[NumbersPointer];
      end;

      CM_MUL://-------------------умножение
      begin
        dec(NumbersPointer);
        NumbersStack[NumbersPointer-1]:=NumbersStack[NumbersPointer-1]*NumbersStack[NumbersPointer];
      end;

      CM_DIV://-------------------деление
      begin
        dec(NumbersPointer);
        try
      	  NumbersStack[NumbersPointer-1]:=NumbersStack[NumbersPointer-1]/NumbersStack[NumbersPointer];
        except
          Crash:=true;
          Result:=0;
          exit;
        end;
      end;

      CM_CALC://-------------------вычисление функции
      begin
        try
          NumbersStack[NumbersPointer-1]:=aCodeOZ.ParamData[aPParams](NumbersStack[NumbersPointer-1]);
          inc(aPParams);
        except
          Crash:=true;
          Result:=0;
          exit;
        end;
      end;
    end;{case}
    inc(aPCode);
  end;
  Result:=NumbersStack[0];
end;

function GetFloatResult(aFormula:string;var aMistake:TMistake):extended;
//получение числового результата по строке (и проверка на ошибки)
var
  CodeOZ:TCodeOZ;
  aCrash:boolean;
begin
  aMistake:=CheckForMistakes(aFormula);
  if aMistake.aMistakeCode = MC_NOERROR then
  begin
    CodeOZ.PCode:=0;
    CodeOZ.PReals:=0;
    CodeOZ.PParam:=0;
    ParseFormula(aFormula, CodeOZ); // синтакситческий разбор
    Result:=Calculate(CodeOZ, aCrash); // итоговые вычисления
  end else Result:=0;
  // если авария при вычислениях
  if aCrash then
  begin
    aMistake.aMistakeCode:=MC_FUNCTIONERROR;
    aMistake.aMistakePos:=0;
  end;
end;


function GetResultStatus(var aStr:string; var aMistake:TMistake):boolean;
// опеделяет, логическое значение это иль просто число
// упрощения - AND - &
//           - OR  - ^
//           - NOT - !
//           - <>  - #
//           - <=  - $
//           - >=  - ?
//           - >   - >
//           - <   - <
var
  OtherFlg, // флаг предшествующих символов, отличных от логических
  CompareFlg:boolean; // флаг предшествующего знака сранения ><=#$?
  i,j:word;
  IsBool:boolean; // переменная для результата
  NewStr,// фомируемая упрощенная строка
  TempStr:string;// строчка, выделяющая отдельные логические выражения
  LogPoz:integer;

  function AddNewStr(st:string):string;
  begin
        if LogPoz > 0 then
            Result:='>0'+st
        else Result:=st;
        LogPoz:=1;
  end;

begin
  i:=1;
  Result:=false;
  NewStr:='';
  TempStr:='';
  aStr:=aStr+' '; // для стопудовой отработки последних символов  BackSpace
  LogPoz:=1;
  while i<=Length(aStr) do
  begin
    if (aStr[i]= #10) or (aStr[i]= #13) then
      begin inc(i); continue; end;
    case aStr[i] of
      // разделяющие символы
      '1','2','3','4','5','6','7','8','9','0',')','(','+','-','*','/',' ':
      begin
        if TempStr<>'' then
        begin
          IsBool:=true;
          if TempStr=ProgMess[L_AND] then NewStr:=NewStr+AddNewStr('&') else
          if TempStr=ProgMess[L_OR] then NewStr:=NewStr+AddNewStr('^') else
          if TempStr=ProgMess[L_NOT] then NewStr:=NewStr+'!' else
          // если непустая временная строка не оказалась в числе логических
          // то к логике отношения нет
          IsBool:=false;

          // если уж хоть раз логику встретили - значит это все логика
          if IsBool then
          begin
            Result:=true;
            TempStr:='';
          end;
        end;

        // если мы рассматривали не пробел или это последний побел,
        // то обнулим временную строку и добавим этот символ
        if (aStr[i]<>' ') then
        begin
          NewStr:=NewStr+TempStr+aStr[i];
          TempStr:='';
        end;
        if (i=Length(aStr)) then
        begin
          NewStr:=NewStr+TempStr+AddNewStr('');
          TempStr:='';
        end;
      end;

      '<': // все, что было перед этим символом, если не пустая строка, то функция без ()
      begin
        LogPoz:=0;
        NewStr:=NewStr+TempStr;
        TempStr:='<';
        Result:=true;
      end;

      '>': // этот символ - либо продолжение <>, либо начало >=, либо сам по себе
      begin
        LogPoz:=0;
        Result:=true;
        if TempStr<>'' then
        begin
          // если предшествующий символ - <, то все вместе - <>
          if TempStr[Length(TempStr)]='<' then
          begin
            TempStr:='';
            NewStr:=NewStr+'#';
          end
          // иначе - впереди имя функции (без аргумента)
          else begin
            NewStr:=NewStr+TempStr;
            TempStr:='>';
          end;
        end else TempStr:='>';
      end;

      '=': // это <= >= или =
      begin
        LogPoz:=0;
        Result:=true;
        if TempStr<>'' then
        begin
          // если предшествующий символ - <, то все вместе - <=
          if TempStr[Length(TempStr)]='<' then
          begin
            TempStr:='';
            NewStr:=NewStr+'$';
          end
          // если предшествующий символ - >, то все вместе - >=
          else if TempStr[Length(TempStr)]='>' then
          begin
            TempStr:='';
            NewStr:=NewStr+'?';
          end
          // иначе - впереди имя функции (без аргумента)
          else begin
            NewStr:=NewStr+TempStr;
            TempStr:='=';
          end;
        end else TempStr:='=';
      end;

      // все остальные символы окромя разделителей и пробелов записываем отдельно
      else begin
        if (not InvalidChar(aStr[i])) then  TempStr:=TempStr+AnsiUpperCase(aStr[i])
        // если всретили недопустимый символ
        else begin
          aMistake.aMistakeCode:=MC_INVALIDCHAR;
          aMistake.aMistakePos:=i;
          exit;
        end;
      end;
    end;{case}
    inc(i);
  end;

  aStr:=NewStr;
//  Form1.Memo2.Lines.Add(aStr);
  // если логики нет, то нас здесь больше ниче не интересует...
  Result:=True;
//  if not Result then Exit;

  // а теперь попытаемся проанализировать логическую структуру
  // на предмет ошибок типа "3<4>67 и не 45"
  CompareFlg:=false;
  OtherFlg:=false;
  j:=0; // отслеживание позиции ошибки
  for i:=1 to Length(aStr) do
  begin
    case aStr[i] of
      '>','<','=':
      begin
        // если перед этим символом стоял такой же <>=#, или ничего не стояло - ошибка
        if CompareFlg or (not OtherFlg) then aMistake.aMistakeCode:=MC_INVALIDSTRUCTURE;
        CompareFlg:=true;
        OtherFlg:=false;
      end;
      '#','$','?':
      begin
        j:=j+1;// в реальной жизни длина этих знаков на 1 больше.... ой! а пробелы-то? ааааа...
        if CompareFlg or (not OtherFlg) then aMistake.aMistakeCode:=MC_INVALIDSTRUCTURE;
        CompareFlg:=true;
        OtherFlg:=false;
      end;
      '&':
      begin
        j:=j+Length(ProgMess[L_AND])-1;
        // если мы встретили этот символ раньше, чем <>=... или после, но без сиволов после - плохо
        if not(CompareFlg) or (not OtherFlg) then aMistake.aMistakeCode:=MC_INVALIDSTRUCTURE;
        CompareFlg:=false;
        OtherFlg:=false;
      end;
      '^':
      begin
        j:=j+Length(ProgMess[L_OR])-1;
        // если мы встретили этот символ раньше, чем <>=... или после, но без сиволов после - плохо
        if not(CompareFlg) or (not OtherFlg) then aMistake.aMistakeCode:=MC_INVALIDSTRUCTURE;
        CompareFlg:=false;
        OtherFlg:=false;
      end;
      '!':
      begin
        j:=j+Length(ProgMess[L_NOT])-1;
        // этот символ может встретиться перед <>=
        if OtherFlg or CompareFlg then aMistake.aMistakeCode:=MC_INVALIDSTRUCTURE;
        CompareFlg:=false;
        OtherFlg:=false;
      end;
      else if (aStr[i]<>')')and(aStr[i]<>'(')then OtherFlg:=true;
    end;{case}
    if aMistake.aMistakeCode<>MC_NOERROR then
    begin
      aMistake.aMistakePos:=i+j;
      exit;
    end;
  end;{for}

  // однако, это еще не все - все должно закончиться сравнением и символами опосля!
  if not(CompareFlg and OtherFlg) then
  begin
    aMistake.aMistakeCode:=MC_INVALIDSTRUCTURE;
    aMistake.aMistakePos:=Length(aStr)+j;
  end;
end;


function StillBoolean(aStr:string):boolean;
var
  i:word;
begin
  Result:=false;
  i:=1;
  while i<=Length(aStr) do
  begin
    if InvalidCharEx(aStr[i]) then
    begin
      Result:=true;
      break;
    end;
    inc(i);
  end;
end;

function RealLength(BoolStr:string):word;
// возвращает длину строки без пробелов, но не упрощенной $#? и тд,
// а с учетом длины /и или не >= /и тд      ---- это для верного возвращения места ошибки
var
  i,increment:word;
begin
  increment:=0;
  i:=1;
  while i<=Length(BoolStr) do
  begin
    case BoolStr[i] of
      '&':inc(increment, Length(ProgMess[L_AND])-1);
      '^':inc(increment, Length(ProgMess[L_OR])-1);
      '!':inc(increment, Length(ProgMess[L_NOT])-1);
      '#','$','?':inc(increment);
    end;{case}
    inc(i);
  end;
  Result:=Length(BoolStr)+increment;
end;

procedure ParseBoolFormula(aStr:string;var aBoolCodeOZ:TBoolCodeOZ; var aMistake:TMistake);
// синтаксический разбор логической формулы для преобразования ее в формализованную структутру aBoolCodeOZ
var
  Brackets,// счетчик скобок ()
  i:integer;
begin
  Brackets:=0;
  // ПЕРВОЕ, ЧЕ ИЩЕМ - OR
  for i:=Length(aStr) downto 1 do
  case aStr[i] of
    ')':inc(Brackets);
    '(':dec(Brackets);
    '^'://************************** or
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_OR;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
  end;

  // ТЕПЕРЬ - AND
  for i:=Length(aStr) downto 1 do
  case aStr[i] of
    ')':inc(Brackets);
    '(':dec(Brackets);
    '&'://************************** and
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_AND;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
  end;

  // ТЕПЕРЬ - NOT
  for i:=Length(aStr) downto 1 do
  case aStr[i] of
    ')':inc(Brackets);
    '(':dec(Brackets);
    '!'://************************** not
    if Brackets=0 then
    begin
      // отработка только правой части
      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_NOT;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
  end;

  // ТЕПЕРЬ - > <  = >= <= <>
  for i:=Length(aStr) downto 1 do
  case aStr[i] of
    ')':inc(Brackets);
    '(':dec(Brackets);
    '>'://**************************
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_BIGGER;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
    '<'://**************************
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_SMALLER;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
    '='://**************************
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_IS;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
    '?'://************************** >=
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_NOSMALLER;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
    '$'://************************** <=
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_NOBIGGER;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
    '#'://************************** <>
    if Brackets=0 then
    begin
      ParseBoolFormula(Copy(aStr,1,i-1), aBoolCodeOZ, aMistake);
      if aMistake.aMistakeCode<>MC_NOERROR then exit;

      ParseBoolFormula(Copy(aStr,i+1,Length(aStr)),aBoolCodeOZ, aMistake);
      // скорректируем указатель на место ошибки на длину левой части
      if aMistake.aMistakeCode<>MC_NOERROR then
      begin
        aMistake.aMistakePos:=aMistake.aMistakePos+RealLength(Copy(aStr,1,i));
        exit;
      end;
      aBoolCodeOZ.CodeData[aBoolCodeOZ.PCode]:=CM_ISNOT;
      inc(aBoolCodeOZ.PCode);
      exit;
    end;
  end;

  // Все, что осталось, либо все еще логическая формула, но в скобках,
  // либо выражение без логики (числовая формула)

  // если это все еще логика (в скобках), то отрабатываем ее по-новой
  if StillBoolean(aStr) then
  begin
    // проверим на наличие обрамяющих скобок, если их нет - то чушь какая-то...
    if not (aStr[1]+aStr[Length(aStr)]='()') then
    begin
      aMistake.aMistakeCode:=MC_INVALIDSTRUCTURE;
      aMistake.aMistakePos:=RealLength(aStr);
      exit;
    end;  
    ParseBoolFormula(Copy(aStr,2,Length(aStr)-2), aBoolCodeOZ, aMistake);
    // если ошибка есть, то увеличим ее позицию на 1 ( за счет левой скобки)
    if aMistake.aMistakeCode <> 0 then inc(aMistake.aMistakePos);
  end
  // в противном случае - пытаемся получить числовой результат
  else begin
    aBoolCodeOZ.Reals[aBoolCodeOZ.PReals]:=GetFloatResult(aStr, aMistake);
    inc(aBoolCodeOZ.PReals);
  end;
end;

function CalculateBool(aBoolCodeOZ:TBoolCodeOZ):boolean;
var
  aPCode,aPReals:word;
  StackPointer:byte;
  BoolStack: array[0..10] of boolean;
begin
  aPCode:=0;
  aPReals:=0;
  StackPointer:=0;
  while aPCode < aBoolCodeOZ.PCode do
  begin
    Case aBoolCodeOZ.CodeData[aPCode] of

      CM_OR://-------------------- или
      begin
        dec(StackPointer);
        BoolStack[StackPointer-1]:=(BoolStack[StackPointer-1] or BoolStack[StackPointer]);
      end;

      CM_AND://-------------------- и
      begin
        dec(StackPointer);
        BoolStack[StackPointer-1]:=(BoolStack[StackPointer-1] and BoolStack[StackPointer]);
      end;

      CM_NOT://-------------------- не - обработка правой части!
      begin
        BoolStack[StackPointer-1]:=not BoolStack[StackPointer-1];
      end;

      CM_BIGGER://-------------------сравнение >
      begin
        // обрабатываем пару чисел
        BoolStack[StackPointer]:=aBoolCodeOZ.Reals[aPReals]>aBoolCodeOZ.Reals[aPReals+1];
        // переключаем указатель на новую пару
        inc(aPreals,2);
        inc(StackPointer);
      end;

      CM_SMALLER://-------------------сравнение <
      begin
        // обрабатываем пару чисел
        BoolStack[StackPointer]:=aBoolCodeOZ.Reals[aPReals]<aBoolCodeOZ.Reals[aPReals+1];
        // переключаем указатель на новую пару
        inc(aPreals,2);
        inc(StackPointer);
      end;

      CM_IS://-------------------сравнение =
      begin
        // обрабатываем пару чисел
        BoolStack[StackPointer]:=aBoolCodeOZ.Reals[aPReals]=aBoolCodeOZ.Reals[aPReals+1];
        // переключаем указатель на новую пару
        inc(aPreals,2);
        inc(StackPointer);
      end;

      CM_NOBIGGER://-------------------сравнение <=
      begin
        // обрабатываем пару чисел
        BoolStack[StackPointer]:=aBoolCodeOZ.Reals[aPReals]<=aBoolCodeOZ.Reals[aPReals+1];
        // переключаем указатель на новую пару
        inc(aPreals,2);
        inc(StackPointer);
      end;

      CM_NOSMALLER://-------------------сравнение >=
      begin
        // обрабатываем пару чисел
        BoolStack[StackPointer]:=aBoolCodeOZ.Reals[aPReals] >= aBoolCodeOZ.Reals[aPReals+1];
        // переключаем указатель на новую пару
        inc(aPreals,2);
        inc(StackPointer);
      end;

      CM_ISNOT://-------------------сравнение <>
      begin
        // обрабатываем пару чисел
        BoolStack[StackPointer]:=aBoolCodeOZ.Reals[aPReals]<>aBoolCodeOZ.Reals[aPReals+1];
        // переключаем указатель на новую пару
        inc(aPreals,2);
        inc(StackPointer);
      end;
    end;{case}
    inc(aPCode);
  end;
  Result:=BoolStack[0];
end;

function GetBoolResult(aFormula:string;var aMistake:TMistake):boolean;
// получение логического значения формулы
var
  BoolCodeOZ:TBoolCodeOZ;
begin
  Result:=false;
  BoolCodeOZ.PCode:=0;
  BoolCodeOZ.PReals:=0;
  // пытаемся разобрать формулу на куски - в кусках могут быть ошибки
  ParseBoolFormula(aFormula, BoolCodeOZ, aMistake);
  if aMistake.aMistakeCode=MC_NOERROR then Result:=CalculateBool(BoolCodeOZ);
end;

function CorrectPos(aNoSpacesPos:word; aStrWithSpaces:string):word;
// приведение позиции ошибки с учетом пробелов в строке (они игнорировались)
var
  i,
  NonSpaces,// счетчик всех символов окромя побелов
  Spaces:word; // а эт для пробелов
begin
  NonSpaces:=0;
  Spaces:=0;
  i:=1;

  While (NonSpaces<aNoSpacesPos) and (i<=Length(aStrWithSpaces))do
  begin
    if aStrWithSpaces[i]=' ' then inc(Spaces) else inc(NonSpaces);
    inc(i);
  end;

  Result:=aNoSpacesPos+Spaces;

  if NonSpaces<>aNoSpacesPos then Result:=Length(aStrWithSpaces); // свидетельство внутренней ошибки!
end;

{function TFormula.GetBlockValue(v:extended):extended;
var st:string;
begin
  Result:=FHotBlock.LoadXY(cOutBlock,(round(v) div ctPicX) mod 10,round(v) mod 1000,st);
end; }

function TFormula.CalcFromText(aStr:string; Ctr:TFPicCtr):FormulResult;
begin
 Result:= fmNone;
 try
    FActCtr:=Ctr;
//    FAuditBlock:=vAuditBlock;
//    FHotBlock:=vAuditBlock.ParentCtr.Block[0];  // vHotBlock;
    Result:= fmNone;
    if  (aStr='') then Exit;   //Not FActCtr.Block[0].Ready or
    SetFormulText(aStr);
//cut3.11    if FResultStatus  then
    if FBoolResult then Result:= fmTrue else Result:= fmFalse;
 except
 Formula.FMistakeCode:=1;
 end;
end;

{function TFormula.BlockCalc(vX,vY:integer;vHotBlock:TBlock):boolean;
var st:string;
begin
    FHotBlock:=vHotBlock;
    FBlock.LoadXY(cOutBlock,vX,vY,st);
    SetFormulText(st);
    Result:= FResultStatus and FBoolResult;
end; }

procedure TFormula.SetFormulText(aFormulText:string);
var
  TempFormulStr:string;
  aMistake:TMistake;
begin
  // обнулим ошибку
  aMistake.aMistakeCode:=MC_NOERROR;
  aMistake.aMistakePos:=0;
//cut3.11  FResultStatus:=False;
  FBoolResult:=False;
  // присваеваем текст
  FFormulText:=aFormulText;   //TrimRight(
  // ввел промежуточную строку с формулой (она изменится)
  TempFormulStr:=FFormulText;
  // определяю тип результата (логич. или числовой), а заодно преобразую вид
  FResultStatus:=GetResultStatus(TempFormulStr, aMistake);
  // если появилась ошибка - оглашаем ее и выходим
//cut3.11  if aMistake.aMistakeCode <> MC_NOERROR then
//cut3.11  begin
//cut3.11    FMistakeCode:=aMistake.aMistakeCode;
//cut3.11    FMistakePos:=CorrectPos(aMistake.aMistakePos, aFormulText);
//cut3.11    exit;
//cut3.11  end;

  // а теперь путь - либо идем путем логики, либо просто считаем число
//cut3.11  FBoolResult:=False;
//cut3.11  if FResultStatus then
   FBoolResult:=GetBoolResult(TempFormulStr,aMistake);
//cut3.11  else FFloatResult:=GetFloatResult(TempFormulStr, aMistake);

  // теперь проверяю на наличие ошибок и оглашаю их
  FMistakeCode:=aMistake.aMistakeCode;
  if FMistakeCode=MC_NOERROR then FMistakePos:=0
  else FMistakePos:=CorrectPos(aMistake.aMistakePos, aFormulText)
end;

function TFormula.GetMistakeText:string;
var i:integer;
  TxtMistake:string;
begin
    Result:='';
    if  MistakeCode <> MC_NOERROR then
    begin
    case MistakeCode of
      MC_INVALIDCHAR:TxtMistake:=ProgMess[542]; //' недопустимый символ ';
      MC_UNKNOWNFUNC:TxtMistake:=ProgMess[543]; //' неизвестная функция ';
      MC_INVALIDNUMBER:TxtMistake:=ProgMess[544]; //' неверно записанное число ';
      MC_LOSTOPERATOR:TxtMistake:=ProgMess[545]; //' пропущен оператор ';
      MC_INVALIDBRACKETS:TxtMistake:=ProgMess[546]; //' утеряны скобки ';
      MC_LOSTNUMBER:TxtMistake:=ProgMess[547]; //' пропущено число ';
      MC_INVALIDSTRUCTURE:TxtMistake:=ProgMess[548]; //' неверная структура ';
      MC_FUNCTIONERROR:TxtMistake:=ProgMess[549]; //' Авария! ОДЗ одной из функций превышено... ';
    end;
//   Result:=Copy(Text,1,MistakePosition)+' ?'+;
   for i:=1 to MistakePosition do
    if (FFormulText[i]<> #10) and (FFormulText[i] <> #13) then Result:= Result + FFormulText[i];
   Result:=Result+' ?'+ TxtMistake;    //NewStr{
   end;
end;
{function GetPi(x:extended):extended;
begin
  Result:=3.1415926535897932384626433832795; // :-)
end;

function GetSinus(x:extended):extended;
begin
  Result:=Sin(x);
end;

function GetCosinus(x:extended):extended;
begin
  Result:=Cos(x);
end;

function GetTg(x:extended):extended;
begin
  Result:=Tan(x);
end;

function GetCtg(x:extended):extended;
begin
  Result:=1/Tan(x);
end;

function GetLn(x:extended):extended;
begin
  Result:=Ln(x);
end;

function GetExp(x:extended):extended;
begin
  Result:=Exp(x);
end;

function GetLog(x:extended):extended;
begin
  Result:=Log10(x);
end;

function GetNul(x:extended):extended;
begin
  Result:=0;
end;

function GetSqrt(x:extended):extended;
begin
  Result:=Sqrt(x);
end;  }

function GetLoadValue(x:extended):extended;
var st:string;
begin
  Result:=Formula.FActCtr.Block[0].LoadXY(cOutBlock,TagToZone1(round(x)),Formula.FActCtr.TagToSens(round(x)),st);
end;

function GetRuleValue(x:extended):extended;
begin
  Result:=GetNowResRule(Formula.FActCtr, round(x));
end;

function GetFuncAddress(FuncName:string):pointer;
begin
  Result:=nil;
  if FuncName=FUNC_LOAD then Result:=@GetLoadValue;
  if FuncName=FUNC_RULE then Result:=@GetRuleValue;
{////  if FuncName='?????' then Result:=@GetSinus else
  if FuncName='SIN' then Result:=@GetSinus else
//  if FuncName='???????' then Result:=@GetCosinus else
  if FuncName='COS' then Result:=@GetCosinus else
  if FuncName='TG' then Result:=@GetTg else
  if FuncName='CTG' then Result:=@GetCtg else
  if FuncName='LOG' then Result:=@GetLog else
  if FuncName='LN' then Result:=@GetLn else
//  if FuncName='??????' then Result:=@GetSqrt else
  if FuncName='SQRT' then Result:=@GetSqrt else
//  if FuncName='????' then Result:=@GetExp else
  if FuncName='EXP' then Result:=@GetExp else
  if FuncName='NULL' then Result:=@GetNul else
//  if FuncName='??' then Result:=@GetPi; }
end;


{procedure Register;
begin
  RegisterComponents('Samples', [TFormula]);
end;
}
initialization
  Formula:=TFormula.Create(nil);
finalization
   Formula.Destroy;
end.
