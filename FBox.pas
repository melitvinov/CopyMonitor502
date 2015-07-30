unit FBox;
interface

uses
  Windows, SysUtils, Classes, Controls, ExtCtrls, Graphics, Forms, FPanel;

type
  TFBox = class(TPaintBox)
  private
    FMemory: Boolean;
    FBitmap: TBitmap;
//    function GetCanvasBitmap: TCanvas;
//    procedure SizeChanged(Sender: TObject);
  protected
    procedure Paint; override;
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
//    procedure SetOut;
//    property CanvasBitmap: TCanvas read GetCanvasBitMap;
  published
    property Memory:Boolean read FMemory write FMemory default False;
    property Align;
    property Anchors;
    property ControlStyle;
    property Constraints;
    property Enabled;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
  end;

procedure Register;

implementation

constructor TFBox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FBitmap:=nil;
  Height := 190;
  Width := 11;
  ParentColor := True;
end;

destructor TFBox.Destroy;
begin
  if FBitmap <> nil then FBitmap.Free;
  inherited Destroy;
end;

{procedure TFBox.SizeChanged(Sender: TObject);
begin
  FBitmap.Height:=Height;
  FBitmap.Width:=Width;
end;}

procedure TFBox.Loaded;
begin
  if Not Memory then Exit;
  FBitmap := TBitmap.Create;
  FBitmap.Height:=Height;
  FBitmap.Width:=Width;
end;

function GetCos(n,Num:integer;SourColor:TColor):TColor;
var  fs:Double;
begin
    fs:=cos(3.1415/3*(2*n/Num-1));
//                fs:=cos(3.1415/3*(2*x/(Width-1)-1)) * (0.9+   (MilliSecondOfTheSecond(Now)/9700 ));
    Result:=TColor(RGB(
                  round(fs*GetRValue(SourColor)),
                  round(fs*GetGValue(SourColor)),
                  round(fs*GetBValue(SourColor))));
end;

procedure TFBox.Paint;
var
  x,y,Tip : Integer;
  RectS,RectD:TRect;
  CanvFon,CanvMem:TCanvas;
  FonColor:TColor;
begin
  if csDesigning in ComponentState then
    with Canvas do
    begin
      Pen.Style := psDash;
      Brush.Style := bsClear;
      Rectangle(0, 0, Width, Height);
      Exit;
    end;
  Tip:=Tag div 1000 mod 100;
  if (Tip<10) or (Tip>13) or Not Visible then Exit;
  if Parent is TCustomForm then CanvFon:=(Parent as TCustomForm).Canvas;
  if Parent is TFPanel then CanvFon:=(Parent as TFPanel).Canvas;
  if FBitmap=nil then CanvMem:=Canvas
   else CanvMem:=FBitmap.Canvas;
  x:=Tag mod 100;
  if x=0 then x:=Height div 2;
  y:=x;
  if y=0 then y:=Width div 2;
  case Tip of
    10:begin // горизонтально вправо
       if Random(9)=2 then CanvMem.Pixels[1,Random(Height-2)+1]:=clWhite;   //tut
       FonColor:=CanvFon.Pixels[Left-x,top+Height div 2];
       for y:=0 to Height-1 do
          CanvMem.Pixels[0,y]:=GetCos(y,Height-1,FonColor);
//            CanvFon.Pixels[Left-x,top+Height div 2]);//mColor);
       RectS:=Rect(0,0,Width-2,Height); RectD:=Rect(1,0,Width-1,Height);
//       RectD:=Rect(1,0,Width,Height); RectS:=Rect(0,0,Width-1,Height);
       FonColor:=Canvas.Pixels[Width-Height,0];
       for y:=1 to Height-2 do
        Canvas.Pixels[Width-1,y]:=FonColor;
       end;
    11: // горизонтально влево
       begin
       if Random(9)=2 then CanvMem.Pixels[Width-2,Random(Height-2)+1]:=clWhite;
       for y:=0 to Height-1 do
        CanvMem.Pixels[Width-1,y]:=GetCos(y,Height-1,
          CanvFon.Pixels[Left+Width+x,top+Height div 2]);//mColor);
       RectS:=Rect(2,0,Width,Height); RectD:=Rect(1,0,Width-1,Height);
//       RectD:=Rect(0,0,Width-1,Height); RectS:=Rect(1,0,Width,Height);
       FonColor:=Canvas.Pixels[Height,0];
       for y:=1 to Height-2 do
        Canvas.Pixels[0,y]:=FonColor;
       end;
  12:  // вертикально вниз
       begin
       if Random(9)=2 then CanvMem.Pixels[Random(Width-2)+1,1]:=clWhite;
       for x:=0 to Width-1 do
        CanvMem.Pixels[x,0]:=GetCos(x,Width-1,
          CanvFon.Pixels[Left+Width div 2,top-y]);//mColor);
       RectD:=Rect(0,1,Width,Height-1); RectS:=Rect(0,0,Width,Height-2);
//       RectD:=Rect(0,1,Width,Height); RectS:=Rect(0,0,Width,Height-1);
       FonColor:=Canvas.Pixels[0,Height-Width];
       for x:=1 to Width-2 do
        Canvas.Pixels[x,Height-1]:=FonColor;
       end;
  13:  // вертикально вверх
       begin
       if Random(7)=2 then CanvMem.Pixels[Random(Width-2)+1,Height-2]:=clWhite;
       FonColor:=CanvFon.Pixels[Left+Width div 2,top+Height+y];
       for x:=0 to Width-1 do
        CanvMem.Pixels[x,Height-1]:=GetCos(x,Width-1,FonColor);
       RectD:=Rect(0,1,Width,Height-1); RectS:=Rect(0,2,Width,Height);
//       RectD:=Rect(0,0,Width,Height-1); RectS:=Rect(0,1,Width,Height);
       FonColor:=Canvas.Pixels[0,Width];
       for x:=1 to Width-2 do
        Canvas.Pixels[x,0]:=FonColor;
       end;
  end;
  if FBitmap<>nil then
     begin
     FBitmap.Canvas.CopyRect (RectD,FBitmap.Canvas, RectS);
     Canvas.CopyRect (RectD,CanvMem, RectD);
//     Canvas.Draw(0,0,FBitmap);
     end else
    Canvas.CopyRect (RectD,CanvMem, RectS);
//    Canvas.CopyRect (Rect(0,0,Width,Height),CanvMem,Rect(0,0,Width,Height));
//  Canvas.StretchDraw(Rect(0,0,Width,Height),FBitmap);
end;

{function TFBox.GetCanvasBitmap: TCanvas;
begin
	Result := FBitmap.Canvas;
end;  }

procedure Register;
begin
  RegisterComponents('Samples', [TFBox]);
end;

end.

