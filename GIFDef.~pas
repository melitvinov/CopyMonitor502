unit GIFDef;

interface

uses   Windows, Classes, Graphics, Forms,  Controls, Dialogs,
      SysUtils, Messages;

{ TBitmap.GetTransparentColor use this value }
const  PaletteMask = $02000000;

type
  TVcImageControl = class(TGraphicControl)
  private
    FDrawing: Boolean;
    FPaintBuffered: Boolean;
    FLock: TRTLCriticalSection;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
  protected
    FGraphic: TGraphic;
    function DoPaletteChange: Boolean;
    procedure DoPaintImage; virtual; abstract;
    procedure DoPaintControl;
    procedure PaintDesignRect;
    procedure PaintImage;
    procedure PictureChanged;
    procedure Lock;
    procedure Unlock;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

const

        MAX_COLORS = 4096;

  Scale04: array[0..3] of Byte = (0, 85, 170, 255);
  Scale06: array[0..5] of Byte = (0, 51, 102, 153, 204, 255);
  Scale07: array[0..6] of Byte = (0, 43, 85, 128, 170, 213, 255);
  Scale08: array[0..7] of Byte = (0, 36, 73, 109, 146, 182, 219, 255);
{ For 6Rx6Gx6B, 7Rx8Gx4B palettes etc. }

var
  TruncIndex04: array[Byte] of byte;
  TruncIndex06: array[Byte] of byte;
  TruncIndex07: array[Byte] of byte;
  TruncIndex08: array[Byte] of byte;



type
  TMappingMethod = (mmHistogram, mmQuantize, mmTrunc784, mmTrunc666,
    mmTripel, mmGrayscale);
  PRGBPalette = ^TRGBPalette;
  TRGBPalette = array [Byte] of TRGBQuad;
  PQColor = ^TQColor;
  TQColor = record
    RGB: array[0..2] of Byte;
    NewColorIndex: Byte;
    Count: Longint;
    PNext: PQColor;
  end;

  PQColorArray = ^TQColorArray;
  TQColorArray = array[0..MAX_COLORS - 1] of TQColor;

  PQColorList = ^TQColorList;
  TQColorList = array[0..MaxListSize - 1] of PQColor;

  PNewColor = ^TNewColor;
  TNewColor = record
    RGBMin, RGBWidth: array[0..2] of Byte;
    NumEntries: Longint;
    Count: Longint;
    QuantizedColors: PQColor;
  end;

  PNewColorArray = ^TNewColorArray;
  TNewColorArray = array[Byte] of TNewColor;
  TTruncLine = procedure(Src, Dest: Pointer; CX: Integer);
const  DefaultMappingMethod: TMappingMethod = mmHistogram;

function BitmapToMemoryStream(Bitmap: TBitmap; PixelFormat: TPixelFormat;
  Method: TMappingMethod): TMemoryStream;

{ TAnimatedCursorImage }

type
{  TFourCC = array[0..3] of Char;

  PAniTag = ^TAniTag;
  TAniTag = packed record
    ckID: TFourCC;
    ckSize: Longint;
  end;  }

{  TAniHeader = packed record
    cbSizeOf: Longint;
    cSteps: Longint;
    cFrames: Longint;
    cReserved: array[0..3] of Longint;
    jifRate: Longint; // 1 Jiffy = 1/60 sec
    fl: Longint;
  end;  }


  TVcTimer = class(TComponent)
  private
    FEnabled: Boolean;
    FInterval: Cardinal;
    FOnTimer: TNotifyEvent;
    FWindowHandle: HWND;
    FSyncEvent: Boolean;
    FThreaded: Boolean;
    FTimerThread: TThread;
    FThreadPriority: TThreadPriority;
    procedure SetThreaded(Value: Boolean);
    procedure SetThreadPriority(Value: TThreadPriority);
    procedure SetEnabled(Value: Boolean);
    procedure SetInterval(Value: Cardinal);
    procedure SetOnTimer(Value: TNotifyEvent);
    procedure UpdateTimer;
    procedure WndProc(var Msg: TMessage);
  protected
    procedure Timer; dynamic;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Synchronize(Method: TThreadMethod);
  published
    property Enabled: Boolean read FEnabled write SetEnabled default True;
    property Interval: Cardinal read FInterval write SetInterval default 1000;
    property SyncEvent: Boolean read FSyncEvent write FSyncEvent default True;
    property Threaded: Boolean read FThreaded write SetThreaded default True;
    property ThreadPriority: TThreadPriority read FThreadPriority write
      SetThreadPriority default tpNormal;
    property OnTimer: TNotifyEvent read FOnTimer write SetOnTimer;
  end;
function Max(A, B: Longint): Longint;
function Min(A, B: Longint): Longint;
function MaxInteger(const Values: array of Longint): Longint;
function MinInteger(const Values: array of Longint): Longint;
function PaletteColor(Color: TColor): Longint;
procedure CopyParentImage(Control: TControl; Dest: TCanvas);
procedure StretchBltTransparent(DstDC: HDC; DstX, DstY, DstW, DstH: Integer;
  SrcDC: HDC; SrcX, SrcY, SrcW, SrcH: Integer; Palette: HPalette;
  TransparentColor: TColorRef);
procedure StretchBitmapTransparent(Dest: TCanvas; Bitmap: TBitmap;
  TransparentColor: TColor; DstX, DstY, DstW, DstH, SrcX, SrcY,
  SrcW, SrcH: Integer);
procedure StretchBitmapRectTransparent(Dest: TCanvas; DstX, DstY,
  DstW, DstH: Integer; SrcRect: TRect; Bitmap: TBitmap;
  TransparentColor: TColor);
function WidthOf(R: TRect): Integer;
function HeightOf(R: TRect): Integer;
procedure HookBitmap;


implementation

procedure InvalidBitmap; near;
begin
  raise EInvalidGraphic.Create('Err');
end;
procedure InitializeBitmapInfoHeader(Bitmap: HBITMAP; var BI: TBitmapInfoHeader;
  PixelFormat: TPixelFormat);
var
  DS: TDIBSection;
  Bytes: Integer;
begin
  DS.dsbmih.biSize := 0;
  Bytes := GetObject(Bitmap, SizeOf(DS), @DS);
  if Bytes = 0 then InvalidBitmap
  else if (Bytes >= (SizeOf(DS.dsbm) + SizeOf(DS.dsbmih))) and
    (DS.dsbmih.biSize >= DWORD(SizeOf(DS.dsbmih))) then
    BI := DS.dsbmih
  else begin
    FillChar(BI, sizeof(BI), 0);
    with BI, DS.dsbm do begin
      biSize := SizeOf(BI);
      biWidth := bmWidth;
      biHeight := bmHeight;
    end;
  end;
  case PixelFormat of
    pf1bit: BI.biBitCount := 1;
    pf4bit: BI.biBitCount := 4;
    pf8bit: BI.biBitCount := 8;
    pf24bit: BI.biBitCount := 24;
    else BI.biBitCount := DS.dsbm.bmBitsPixel * DS.dsbm.bmPlanes;
  end;
  BI.biPlanes := 1;
  if BI.biSizeImage = 0 then
    BI.biSizeImage := BytesPerScanLine(BI.biWidth, BI.biBitCount, 32) * Abs(BI.biHeight);
end;
function WidthBytes(I: Longint): Longint;
begin
  Result := ((I + 31) div 32) * 4;
end;

function PixelFormatToColors(PixelFormat: TPixelFormat): Integer;
begin
  case PixelFormat of
    pf1bit: Result := 2;
    pf4bit: Result := 16;
    pf8bit: Result := 256;
    else Result := 0;
  end;
end;

function ScreenPixelFormat: TPixelFormat;
var
  DC: HDC;
begin
  DC := GetDC(0);
  try
    case (GetDeviceCaps(DC, PLANES) * GetDeviceCaps(DC, BITSPIXEL)) of
      1: Result := pf1bit;
      4: Result := pf4bit;
      8: Result := pf8bit;
      24: Result := pf24bit;
      else Result := pfDevice;
    end;
  finally
    ReleaseDC(0, DC);
  end;
end;

function ScreenColorCount: Integer;
begin
  Result := PixelFormatToColors(ScreenPixelFormat);
end;

procedure InternalGetDIBSizes(Bitmap: HBITMAP; var InfoHeaderSize: Integer;
  var ImageSize: Longint; BitCount: TPixelFormat);
var
  BI: TBitmapInfoHeader;
begin
  InitializeBitmapInfoHeader(Bitmap, BI, BitCount);
  if BI.biBitCount > 8 then begin
    InfoHeaderSize := SizeOf(TBitmapInfoHeader);
    if (BI.biCompression and BI_BITFIELDS) <> 0 then
      Inc(InfoHeaderSize, 12);
  end
  else InfoHeaderSize := SizeOf(TBitmapInfoHeader) + SizeOf(TRGBQuad) *
    (1 shl BI.biBitCount);
  ImageSize := BI.biSizeImage;
end;

function InternalGetDIB(Bitmap: HBITMAP; Palette: HPALETTE;
  var BitmapInfo; var Bits; PixelFormat: TPixelFormat): Boolean;
var
  OldPal: HPALETTE;
  DC: HDC;
begin
  InitializeBitmapInfoHeader(Bitmap, TBitmapInfoHeader(BitmapInfo), PixelFormat);
  with TBitmapInfoHeader(BitmapInfo) do biHeight := Abs(biHeight);
  OldPal := 0;
  DC := CreateCompatibleDC(0);
  try
    if Palette <> 0 then
    begin
      OldPal := SelectPalette(DC, Palette, False);
      RealizePalette(DC);
    end;
    Result := GetDIBits(DC, Bitmap, 0, TBitmapInfoHeader(BitmapInfo).biHeight,
      @Bits, TBitmapInfo(BitmapInfo), DIB_RGB_COLORS) <> 0;
  finally
    if OldPal <> 0 then SelectPalette(DC, OldPal, False);
    DeleteDC(DC);
  end;
end;

function DIBFromBit(Src: HBITMAP; Pal: HPALETTE; PixelFormat: TPixelFormat;
  var Length: Longint): Pointer;
var
  HeaderSize: Integer;
  ImageSize: Longint;
  FileHeader: PBitmapFileHeader;
  BI: PBitmapInfoHeader;
  Bits: Pointer;
begin
  if Src = 0 then InvalidBitmap;
  InternalGetDIBSizes(Src, HeaderSize, ImageSize, PixelFormat);
  Length := SizeOf(TBitmapFileHeader) + HeaderSize + ImageSize;
  Result := AllocMem(Length);
  try
    FillChar(Result^, Length, 0);
    FileHeader := Result;
    with FileHeader^ do
    begin
      bfType := $4D42;
      bfSize := Length;
      bfOffBits := SizeOf(FileHeader^) + HeaderSize;
    end;
    BI := PBitmapInfoHeader(Longint(FileHeader) + SizeOf(FileHeader^));
    Bits := Pointer(Longint(BI) + HeaderSize);
    InternalGetDIB(Src, Pal, BI^, Bits^, PixelFormat);
  except
    FreeMem(Result);
    raise;
  end;
end;

procedure PInsert(ColorList: PQColorList; Number: Integer;
  SortRGBAxis: Integer);
var
  Q1, Q2: PQColor;
  I, J: Integer;
  Temp: PQColor;
begin
  for I := 1 to Number - 1 do begin
    Temp := ColorList^[I];
    J := I - 1;
    while (J >= 0) do begin
      Q1 := Temp;
      Q2 := ColorList^[J];
      if (Q1^.RGB[SortRGBAxis] - Q2^.RGB[SortRGBAxis] > 0) then Break;
      ColorList^[J + 1] := ColorList^[J];
      Dec(J);
    end;
    ColorList^[J + 1] := Temp;
  end;
end;


procedure NotImplemented;
begin
  Screen.Cursor := crDefault;
  MessageDlg('NotImplemented', mtInformation, [mbOk], 0);
  Abort;
end;

procedure PSort(ColorList: PQColorList; Number: Integer;
  SortRGBAxis: Integer);
var
  Q1, Q2: PQColor;
  I, J, N, Nr: Integer;
  Temp, Part: PQColor;
begin
  if Number < 8 then begin
    PInsert(ColorList, Number, SortRGBAxis);
    Exit;
  end;
  Part := ColorList^[Number div 2];
  I := -1;
  J := Number;
  repeat
    repeat
      Inc(I);
      Q1 := ColorList^[I];
      Q2 := Part;
      N := Q1^.RGB[SortRGBAxis] - Q2^.RGB[SortRGBAxis];
    until (N >= 0);
    repeat
      Dec(J);
      Q1 := ColorList^[J];
      Q2 := Part;
      N := Q1^.RGB[SortRGBAxis] - Q2^.RGB[SortRGBAxis];
    until (N <= 0);
    if (I >= J) then Break;
    Temp := ColorList^[I];
    ColorList^[I] := ColorList^[J];
    ColorList^[J] := Temp;
  until False;
  Nr := Number - I;
  if (I < Number div 2) then begin
    PSort(ColorList, I, SortRGBAxis);
    PSort(PQColorList(@ColorList^[I]), Nr, SortRGBAxis);
  end
  else begin
    PSort(PQColorList(@ColorList^[I]), Nr, SortRGBAxis);
    PSort(ColorList, I, SortRGBAxis);
  end;
end;

function HugeOffset(HugePtr: Pointer; Amount: Longint): Pointer;
begin
  Result := PChar(HugePtr) + Amount;
end;
procedure HMemCpy(DstPtr, SrcPtr: Pointer; Amount: Longint);
begin
  Move(SrcPtr^, DstPtr^, Amount);
end;
function DivideMap(NewColorSubdiv: PNewColorArray; ColorMapSize: Integer;
  var NewColormapSize: Integer; lpStr: Pointer): Integer;
var
  I, J: Integer;
  MaxSize, Index: Integer;
  NumEntries, MinColor,
  MaxColor:  Integer;
  Sum, Count: Longint;
  QuantizedColor: PQColor;
  SortArray: PQColorList;
  SortRGBAxis: Integer;
begin
  Index := 0; SortRGBAxis := 0;
  while (colormapsize > NewColormapSize) do begin
    MaxSize := -1;
    for I := 0 to NewColormapSize - 1 do begin
      for J := 0 to 2 do begin
        if (NewColorSubdiv^[I].RGBwidth[J] > MaxSize) and
          (NewColorSubdiv^[I].NumEntries > 1) then
        begin
          MaxSize := NewColorSubdiv^[I].RGBwidth[J];
          Index := I;
          SortRGBAxis := J;
        end;
      end;
    end;
    if (MaxSize = -1) then begin
      Result := 1;
      Exit;
    end;
    SortArray := PQColorList(lpStr);
    J := 0;
    QuantizedColor := NewColorSubdiv^[Index].QuantizedColors;
    while (J < NewColorSubdiv^[Index].NumEntries) and
      (QuantizedColor <> nil) do
    begin
      SortArray^[J] := QuantizedColor;
      Inc(J);
      QuantizedColor := QuantizedColor^.pnext;
    end;
    PSort(SortArray, NewColorSubdiv^[Index].NumEntries, SortRGBAxis);
    for J := 0 to NewColorSubdiv^[Index].NumEntries - 2 do
      SortArray^[J]^.pnext := SortArray^[J + 1];
    SortArray^[NewColorSubdiv^[Index].NumEntries - 1]^.pnext := nil;
    NewColorSubdiv^[Index].QuantizedColors := SortArray^[0];
    QuantizedColor := SortArray^[0];
    Sum := NewColorSubdiv^[Index].Count div 2 - QuantizedColor^.Count;
    NumEntries := 1;
    Count := QuantizedColor^.Count;
    Dec(Sum, QuantizedColor^.pnext^.Count);
    while (Sum >= 0) and (QuantizedColor^.pnext <> nil) and
      (QuantizedColor^.pnext^.pnext <> nil) do
    begin
      QuantizedColor := QuantizedColor^.pnext;
      Inc(NumEntries);
      Inc(Count, QuantizedColor^.Count);
      Dec(Sum, QuantizedColor^.pnext^.Count);
    end;
    MaxColor := (QuantizedColor^.RGB[SortRGBAxis]) shl 4;
    MinColor := (QuantizedColor^.pnext^.RGB[SortRGBAxis]) shl 4;
    NewColorSubdiv^[NewColormapSize].QuantizedColors := QuantizedColor^.pnext;
    QuantizedColor^.pnext := nil;
    NewColorSubdiv^[NewColormapSize].Count := Count;
    Dec(NewColorSubdiv^[Index].Count, Count);
    NewColorSubdiv^[NewColormapSize].NumEntries :=
      NewColorSubdiv^[Index].NumEntries - NumEntries;
    NewColorSubdiv^[Index].NumEntries := NumEntries;
    for J := 0 to 2 do begin
      NewColorSubdiv^[NewColormapSize].RGBmin[J] :=
        NewColorSubdiv^[Index].RGBmin[J];
      NewColorSubdiv^[NewColormapSize].RGBwidth[J] :=
        NewColorSubdiv^[Index].RGBwidth[J];
    end;
    NewColorSubdiv^[NewColormapSize].RGBwidth[SortRGBAxis] :=
      NewColorSubdiv^[NewColormapSize].RGBmin[SortRGBAxis] +
      NewColorSubdiv^[NewColormapSize].RGBwidth[SortRGBAxis] -
      MinColor;
    NewColorSubdiv^[NewColormapSize].RGBmin[SortRGBAxis] := MinColor;
    NewColorSubdiv^[Index].RGBwidth[SortRGBAxis] :=
      MaxColor - NewColorSubdiv^[Index].RGBmin[SortRGBAxis];
    Inc(NewColormapSize);
  end;
  Result := 1;
end;

function GetBitmapPixelFormat(Bitmap: TBitmap): TPixelFormat;
begin
  Result := Bitmap.PixelFormat;
end;
function Quantize(const bmp: TBitmapInfoHeader; gptr, Data8: Pointer;
  var ColorCount: Integer; var OutputColormap: TRGBPalette): Integer;
type
  PWord = ^Word;
var
  P: PByteArray;
  LineBuffer, Data: Pointer;
  LineWidth: Longint;
  TmpLineWidth, NewLineWidth: Longint;
  I, J: Longint;
  Index: Word;
  NewColormapSize, NumOfEntries: Integer;
  Mems: Longint;
  cRed, cGreen, cBlue: Longint;
  lpStr, Temp, Tmp: Pointer;
  NewColorSubdiv: PNewColorArray;
  ColorArrayEntries: PQColorArray;
  QuantizedColor: PQColor;
begin
  LineWidth := WidthBytes(Longint(bmp.biWidth) * bmp.biBitCount);
  Mems := (Longint(SizeOf(TQColor)) * (MAX_COLORS)) +
    (Longint(SizeOf(TNewColor)) * 256) + LineWidth +
    (Longint(sizeof(PQCOLOR)) * (MAX_COLORS));
  lpStr := AllocMem(Mems);
  try
    Temp := AllocMem(Longint(bmp.biWidth) * Longint(bmp.biHeight) *
      SizeOf(Word));
    try
      ColorArrayEntries := PQColorArray(lpStr);
      NewColorSubdiv := PNewColorArray(HugeOffset(lpStr,
        Longint(sizeof(TQColor)) * (MAX_COLORS)));
      LineBuffer := HugeOffset(lpStr, (Longint(sizeof(TQColor)) * (MAX_COLORS)) +
        (Longint(sizeof(TNewColor)) * 256));
      for I := 0 to MAX_COLORS - 1 do begin
        ColorArrayEntries^[I].RGB[0] := I shr 8;
        ColorArrayEntries^[I].RGB[1] := (I shr 4) and $0F;
        ColorArrayEntries^[I].RGB[2] := I and $0F;
        ColorArrayEntries^[I].Count := 0;
      end;
      Tmp := Temp;
      for I := 0 to bmp.biHeight - 1 do begin
        HMemCpy(LineBuffer, HugeOffset(gptr, (bmp.biHeight - 1 - I) *
          LineWidth), LineWidth);
        P := LineBuffer;
        for J := 0 to bmp.biWidth - 1 do begin
          Index := (Longint(P^[2] and $F0) shl 4) +
            Longint(P^[1] and $F0) + (Longint(P^[0] and $F0) shr 4);
          Inc(ColorArrayEntries^[Index].Count);
          P := HugeOffset(P, 3);
          PWord(Tmp)^ := Index;
          Tmp := HugeOffset(Tmp, 2);
        end;
      end;
      for I := 0 to 255 do begin
        NewColorSubdiv^[I].QuantizedColors := nil;
        NewColorSubdiv^[I].Count := 0;
        NewColorSubdiv^[I].NumEntries := 0;
        for J := 0 to 2 do begin
          NewColorSubdiv^[I].RGBmin[J] := 0;
          NewColorSubdiv^[I].RGBwidth[J] := 255;
        end;
      end;
      I := 0;
      while I < MAX_COLORS do begin
        if ColorArrayEntries^[I].Count > 0 then Break;
        Inc(I);
      end;
      QuantizedColor := @ColorArrayEntries^[I];
      NewColorSubdiv^[0].QuantizedColors := @ColorArrayEntries^[I];
      NumOfEntries := 1;
      Inc(I);
      while I < MAX_COLORS do begin
        if ColorArrayEntries^[I].Count > 0 then begin
          QuantizedColor^.pnext := @ColorArrayEntries^[I];
          QuantizedColor := @ColorArrayEntries^[I];
          Inc(NumOfEntries);
        end;
        Inc(I);
      end;
      QuantizedColor^.pnext := nil;
      NewColorSubdiv^[0].NumEntries := NumOfEntries;
      NewColorSubdiv^[0].Count := Longint(bmp.biWidth) * Longint(bmp.biHeight);
      NewColormapSize := 1;
      DivideMap(NewColorSubdiv, ColorCount, NewColormapSize,
        HugeOffset(lpStr, Longint(SizeOf(TQColor)) * (MAX_COLORS) +
        Longint(SizeOf(TNewColor)) * 256 + LineWidth));
      if (NewColormapSize < ColorCount) then begin
        for I := NewColormapSize to ColorCount - 1 do
          FillChar(OutputColormap[I], SizeOf(TRGBQuad), 0);
      end;
      for I := 0 to NewColormapSize - 1 do begin
        J := NewColorSubdiv^[I].NumEntries;
        if J > 0 then begin
          QuantizedColor := NewColorSubdiv^[I].QuantizedColors;
          cRed := 0;
          cGreen := 0;
          cBlue := 0;
          while (QuantizedColor <> nil) do begin
            QuantizedColor^.NewColorIndex := I;
            Inc(cRed, QuantizedColor^.RGB[0]);
            Inc(cGreen, QuantizedColor^.RGB[1]);
            Inc(cBlue, QuantizedColor^.RGB[2]);
            QuantizedColor := QuantizedColor^.pnext;
          end;
          with OutputColormap[I] do begin
            rgbRed := (Longint(cRed shl 4) or $0F) div J;
            rgbGreen := (Longint(cGreen shl 4) or $0F) div J;
            rgbBlue := (Longint(cBlue shl 4) or $0F) div J;
            rgbReserved := 0;
            if (rgbRed <= $10) and (rgbGreen <= $10) and (rgbBlue <= $10) then
              FillChar(OutputColormap[I], SizeOf(TRGBQuad), 0); { clBlack }
          end;
        end;
      end;
      TmpLineWidth := Longint(bmp.biWidth) * SizeOf(Word);
      NewLineWidth := WidthBytes(Longint(bmp.biWidth) * 8);
      ZeroMemory(Data8, NewLineWidth * bmp.biHeight);
      for I := 0 to bmp.biHeight - 1 do begin
        LineBuffer := HugeOffset(Temp, (bmp.biHeight - 1 - I) * TmpLineWidth);
        Data := HugeOffset(Data8, I * NewLineWidth);
        for J := 0 to bmp.biWidth - 1 do begin
          PByte(Data)^ := ColorArrayEntries^[PWord(LineBuffer)^].NewColorIndex;
          LineBuffer := HugeOffset(LineBuffer, 2);
          Data := HugeOffset(Data, 1);
        end;
      end;
    finally
      FreeMem(Temp);
    end;
  finally
    FreeMem(lpStr);
  end;
  ColorCount := NewColormapSize;
  Result := 0;
end;
procedure Trunc(const Header: TBitmapInfoHeader; Src, Dest: Pointer;
  DstBitsPerPixel: Integer; TruncLineProc: TTruncLine);
var
  SrcScanline, DstScanline: Longint;
  Y: Integer;
begin
  SrcScanline := (Header.biWidth * 3 + 3) and not 3;
  DstScanline := ((Header.biWidth * DstBitsPerPixel + 31) div 32) * 4;
  for Y := 0 to Header.biHeight - 1 do
    TruncLineProc(HugeOffset(Src, Y * SrcScanline),
      HugeOffset(Dest, Y * DstScanline), Header.biWidth);
end;

{ return 6Rx6Gx6B palette
  This function makes the palette for the 6 red X 6 green X 6 blue palette.
  216 palette entrys used. Remaining 40 Left blank.
}
procedure TruncPal6R6G6B(var Colors: TRGBPalette);
var
  I, R, G, B: Byte;
begin
  FillChar(Colors, SizeOf(TRGBPalette), $80);
  I := 0;
  for R := 0 to 5 do
    for G := 0 to 5 do
      for B := 0 to 5 do begin
        Colors[I].rgbRed := Scale06[R];
        Colors[I].rgbGreen := Scale06[G];
        Colors[I].rgbBlue := Scale06[B];
        Colors[I].rgbReserved := 0;
        Inc(I);
      end;
end;

{ truncate to 6Rx6Gx6B one line }
procedure TruncLine6R6G6B(Src, Dest: Pointer; CX: Integer); far;
var
  X: Integer;
  R, G, B: Byte;
begin
  for X := 0 to CX - 1 do begin
    B := TruncIndex06[Byte(Src^)]; Src := HugeOffset(Src, 1);
    G := TruncIndex06[Byte(Src^)]; Src := HugeOffset(Src, 1);
    R := TruncIndex06[Byte(Src^)]; Src := HugeOffset(Src, 1);
    PByte(Dest)^ := 6 * (6 * R + G) + B;
    Dest := HugeOffset(Dest, 1);
  end;
end;

{ truncate to 6Rx6Gx6B }
procedure Trunc6R6G6B(const Header: TBitmapInfoHeader;
  const Data24, Data8: Pointer);
begin
  Trunc(Header, Data24, Data8, 8, TruncLine6R6G6B);
end;

{ return 7Rx8Gx4B palette
  This function makes the palette for the 7 red X 8 green X 4 blue palette.
  224 palette entrys used. Remaining 32 Left blank.
  Colours calculated to match those used by 8514/A PM driver.
}
procedure TruncPal7R8G4B(var Colors: TRGBPalette);
var
  I, R, G, B: Byte;
begin
  FillChar(Colors, SizeOf(TRGBPalette), $80);
  I := 0;
  for R := 0 to 6 do
    for G := 0 to 7 do
      for B := 0 to 3 do begin
        Colors[I].rgbRed := Scale07[R];
        Colors[I].rgbGreen := Scale08[G];
        Colors[I].rgbBlue := Scale04[B];
        Colors[I].rgbReserved := 0;
        Inc(I);
      end;
end;

{ truncate to 7Rx8Gx4B one line }
procedure TruncLine7R8G4B(Src, Dest: Pointer; CX: Integer); far;
var
  X: Integer;
  R, G, B: Byte;
begin
  for X := 0 to CX - 1 do begin
    B := TruncIndex04[Byte(Src^)]; Src := HugeOffset(Src, 1);
    G := TruncIndex08[Byte(Src^)]; Src := HugeOffset(Src, 1);
    R := TruncIndex07[Byte(Src^)]; Src := HugeOffset(Src, 1);
    PByte(Dest)^ := 4 * (8 * R + G) + B;
    Dest := HugeOffset(Dest, 1);
  end;
end;

{ truncate to 7Rx8Gx4B }
procedure Trunc7R8G4B(const Header: TBitmapInfoHeader;
  const Data24, Data8: Pointer);
begin
  Trunc(Header, Data24, Data8, 8, TruncLine7R8G4B);
end;

{ Tripel conversion }

procedure TripelPal(var Colors: TRGBPalette);
var
  I: Byte;
begin
  FillChar(Colors, SizeOf(TRGBPalette), 0);
  for I := 0 to $40 do begin
    Colors[I].rgbRed := I shl 2;
    Colors[I + $40].rgbGreen := I shl 2;
    Colors[I + $80].rgbBlue := I shl 2;
  end;
end;

procedure Tripel(const Header: TBitmapInfoHeader; Data24, Data8: Pointer);
var
  SrcScanline, DstScanline: Longint;
  Y, X: Integer;
  Src, Dest: PByte;
  R, G, B: Byte;
begin
  SrcScanline := (Header.biWidth * 3 + 3) and not 3;
  DstScanline := (Header.biWidth + 3) and not 3;
  for Y := 0 to Header.biHeight - 1 do begin
    Src := Data24;
    Dest := Data8;
    for X := 0 to Header.biWidth - 1 do begin
      B := Src^; Src := HugeOffset(Src, 1);
      G := Src^; Src := HugeOffset(Src, 1);
      R := Src^; Src := HugeOffset(Src, 1);
      case ((X + Y) mod 3) of
        0: Dest^ := Byte(R shr 2);
        1: Dest^ := Byte($40 + (G shr 2));
        2: Dest^ := Byte($80 + (B shr 2));
      end;
      Dest := HugeOffset(Dest, 1);
    end;
    Data24 := HugeOffset(Data24, SrcScanline);
    Data8 := HugeOffset(Data8, DstScanline);
  end;
end;

{ Histogram/Frequency-of-use method of color reduction }

const
  MAX_N_COLS = 2049;
  MAX_N_HASH = 5191;

function Hash(R, G, B: Byte): Word;
begin
  Result := Word(Longint(Longint(R + G) * Longint(G + B) *
    Longint(B + R)) mod MAX_N_HASH);
end;

type
  PFreqRecord = ^TFreqRecord;
  TFreqRecord = record
    B, G, R: Byte;
    Frequency: Longint;
    Nearest: Byte;
  end;

  PHist = ^THist;
  THist = record
    ColCount: Longint;
    Rm, Gm, Bm: Byte;
    Freqs: array[0..MAX_N_COLS - 1] of TFreqRecord;
    HashTable: array[0..MAX_N_HASH - 1] of Word;
  end;

function CreateHistogram(R, G, B: Byte): PHist;
{ create empty histogram }
begin
  GetMem(Result, SizeOf(THist));
  with Result^ do begin
    Rm := R;
    Gm := G;
    Bm := B;
    ColCount := 0;
  end;
  FillChar(Result^.HashTable, MAX_N_HASH * SizeOf(Word), 255);
end;

procedure ClearHistogram(var Hist: PHist; R, G, B: Byte);
begin
  with Hist^ do begin
    Rm := R;
    Gm := G;
    Bm := B;
    ColCount := 0;
  end;
  FillChar(Hist^.HashTable, MAX_N_HASH * SizeOf(Word), 255);
end;

procedure DeleteHistogram(var Hist: PHist);
begin
  FreeMem(Hist, SizeOf(THist));
  Hist := nil;
end;

function AddToHistogram(var Hist: THist; const Header: TBitmapInfoHeader;
  Data24: Pointer): Boolean;
{ add bitmap data to histogram }
var
  Step24: Integer;
  HashColor, Index: Word;
  Rm, Gm, Bm, R, G, B: Byte;
  X, Y, ColCount: Longint;
begin
  Step24 := ((Header.biWidth * 3 + 3) and not 3) - Header.biWidth * 3;
  Rm := Hist.Rm;
  Gm := Hist.Gm;
  Bm := Hist.Bm;
  ColCount := Hist.ColCount;
  for Y := 0 to Header.biHeight - 1 do begin
    for X := 0 to Header.biWidth - 1 do begin
      B := Byte(Data24^) and Bm; Data24 := HugeOffset(Data24, 1);
      G := Byte(Data24^) and Gm; Data24 := HugeOffset(Data24, 1);
      R := Byte(Data24^) and Rm; Data24 := HugeOffset(Data24, 1);
      HashColor := Hash(R, G, B);
      repeat
        Index := Hist.HashTable[HashColor];
        if (Index = $FFFF) or ((Hist.Freqs[Index].R = R) and
          (Hist.Freqs[Index].G = G) and (Hist.Freqs[Index].B = B)) then Break;
        Inc(HashColor);
        if (HashColor = MAX_N_HASH) then HashColor := 0;
      until False;
      { Note: loop will always be broken out of }
      { We don't allow HashTable to fill up above half full }
      if (Index = $FFFF) then begin
        { Not found in Hash table }
        if (ColCount = MAX_N_COLS) then begin
          Result := False;
          Exit;
        end;
        Hist.Freqs[ColCount].Frequency := 1;
        Hist.Freqs[ColCount].B := B;
        Hist.Freqs[ColCount].G := G;
        Hist.Freqs[ColCount].R := R;
        Hist.HashTable[HashColor] := ColCount;
        Inc(ColCount);
      end
      else begin
        { Found in Hash table, update index }
        Inc(Hist.Freqs[Index].Frequency);
      end;
    end;
    Data24 := HugeOffset(Data24, Step24);
  end;
  Hist.ColCount := ColCount;
  Result := True;
end;

procedure PalHistogram(var Hist: THist; var Colors: TRGBPalette;
  ColorsWanted: Integer);
{ work out a palette from Hist }
var
  I, J: Longint;
  MinDist, Dist: Longint;
  MaxJ, MinJ: Longint;
  DeltaB, DeltaG, DeltaR: Longint;
  MaxFreq: Longint;
begin
  I := 0; MaxJ := 0; MinJ := 0;
  { Now find the ColorsWanted most frequently used ones }
  while (I < ColorsWanted) and (I < Hist.ColCount) do begin
    MaxFreq := 0;
    for J := 0 to Hist.ColCount - 1 do
      if (Hist.Freqs[J].Frequency > MaxFreq) then begin
        MaxJ := J;
        MaxFreq := Hist.Freqs[J].Frequency;
      end;
    Hist.Freqs[MaxJ].Nearest := Byte(I);
    Hist.Freqs[MaxJ].Frequency := 0;  { Prevent later use of Freqs[MaxJ] }
    Colors[I].rgbBlue := Hist.Freqs[MaxJ].B;
    Colors[I].rgbGreen := Hist.Freqs[MaxJ].G;
    Colors[I].rgbRed := Hist.Freqs[MaxJ].R;
    Colors[I].rgbReserved := 0;
    Inc(I);
  end;
  { Unused palette entries will be medium grey }
  while I <= 255 do begin
    Colors[I].rgbRed := $80;
    Colors[I].rgbGreen := $80;
    Colors[I].rgbBlue := $80;
    Colors[I].rgbReserved := 0;
    Inc(I);
  end;
  { For the rest, find the closest one in the first ColorsWanted }
  for I := 0 to Hist.ColCount - 1 do begin
    if Hist.Freqs[I].Frequency <> 0 then begin
      MinDist := 3 * 256 * 256;
      for J := 0 to ColorsWanted - 1 do begin
        DeltaB := Hist.Freqs[I].B - Colors[J].rgbBlue;
        DeltaG := Hist.Freqs[I].G - Colors[J].rgbGreen;
        DeltaR := Hist.Freqs[I].R - Colors[J].rgbRed;
        Dist := Longint(DeltaR * DeltaR) + Longint(DeltaG * DeltaG) +
          Longint(DeltaB * DeltaB);
        if (Dist < MinDist) then begin
          MinDist := Dist;
          MinJ := J;
        end;
      end;
      Hist.Freqs[I].Nearest := Byte(MinJ);
    end;
  end;
end;

procedure MapHistogram(var Hist: THist; const Header: TBitmapInfoHeader;
  Data24, Data8: Pointer);
{ map bitmap data to Hist palette }
var
  Step24: Integer;
  Step8: Integer;
  HashColor, Index: Longint;
  Rm, Gm, Bm, R, G, B: Byte;
  X, Y: Longint;
begin
  Step24 := ((Header.biWidth * 3 + 3) and not 3) - Header.biWidth * 3;
  Step8 := ((Header.biWidth + 3) and not 3) - Header.biWidth;
  Rm := Hist.Rm;
  Gm := Hist.Gm;
  Bm := Hist.Bm;
  for Y := 0 to Header.biHeight - 1 do begin
    for X := 0 to Header.biWidth - 1 do begin
      B := Byte(Data24^) and Bm; Data24 := HugeOffset(Data24, 1);
      G := Byte(Data24^) and Gm; Data24 := HugeOffset(Data24, 1);
      R := Byte(Data24^) and Rm; Data24 := HugeOffset(Data24, 1);
      HashColor := Hash(R, G, B);
      repeat
        Index := Hist.HashTable[HashColor];
        if (Hist.Freqs[Index].R = R) and (Hist.Freqs[Index].G = G) and
          (Hist.Freqs[Index].B = B) then Break;
        Inc(HashColor);
        if (HashColor = MAX_N_HASH) then HashColor := 0;
      until False;
      PByte(Data8)^ := Hist.Freqs[Index].Nearest;
      Data8 := HugeOffset(Data8, 1);
    end;
    Data24 := HugeOffset(Data24, Step24);
    Data8 := HugeOffset(Data8, Step8);
  end;
end;

procedure Histogram(const Header: TBitmapInfoHeader; var Colors: TRGBPalette;
  Data24, Data8: Pointer; ColorsWanted: Integer; Rm, Gm, Bm: Byte);
{ map single bitmap to frequency optimised palette }
var
  Hist: PHist;
begin
  Hist := CreateHistogram(Rm, Gm, Bm);
  try
    repeat
      if AddToHistogram(Hist^, Header, Data24) then Break
      else begin
        if (Gm > Rm) then Gm := Gm shl 1
        else if (Rm > Bm) then Rm := Rm shl 1
        else Bm := Bm shl 1;
        ClearHistogram(Hist, Rm, Gm, Bm);
      end;
    until False;
    { Above loop will always be exited as if masks get rough   }
    { enough, ultimately number of unique colours < MAX_N_COLS }
    PalHistogram(Hist^, Colors, ColorsWanted);
    MapHistogram(Hist^, Header, Data24, Data8);
  finally
    DeleteHistogram(Hist);
  end;
end;

{ Grayscale support }

procedure GrayPal(var Colors: TRGBPalette);
var
  I: Byte;
begin
  FillChar(Colors, SizeOf(TRGBPalette), 0);
  for I := 0 to 255 do FillChar(Colors[I], 3, I);
end;

procedure Grayscale(const Header: TBitmapInfoHeader; Data24, Data8: Pointer);
var
  SrcScanline, DstScanline: Longint;
  Y, X: Integer;
  Src, Dest: PByte;
  R, G, B: Byte;
begin
  SrcScanline := (Header.biWidth * 3 + 3) and not 3;
  DstScanline := (Header.biWidth + 3) and not 3;
  for Y := 0 to Header.biHeight - 1 do begin
    Src := Data24;
    Dest := Data8;
    for X := 0 to Header.biWidth - 1 do begin
      B := Src^; Src := HugeOffset(Src, 1);
      G := Src^; Src := HugeOffset(Src, 1);
      R := Src^; Src := HugeOffset(Src, 1);
      Dest^ := Byte(Longint(Word(R) * 77 + Word(G) * 150 + Word(B) * 29) shr 8);
      Dest := HugeOffset(Dest, 1);
    end;
    Data24 := HugeOffset(Data24, SrcScanline);
    Data8 := HugeOffset(Data8, DstScanline);
  end;
end;

function BitmapToMemoryStream(Bitmap: TBitmap; PixelFormat: TPixelFormat;
  Method: TMappingMethod): TMemoryStream;
var
  FileHeader: PBitmapFileHeader;
  BI, NewBI: PBitmapInfoHeader;
  Bits: Pointer;
  NewPalette: PRGBPalette;
  NewHeaderSize: Integer;
  ImageSize, Length, Len: Longint;
  P, InitData: Pointer;
  ColorCount: Integer;
begin
  if Bitmap.Handle = 0 then InvalidBitmap;
  if (GetBitmapPixelFormat(Bitmap) = PixelFormat) and
    (Method <> mmGrayscale) then
  begin
    Result := TMemoryStream.Create;
    try
      Bitmap.SaveToStream(Result);
      Result.Position := 0;
    except
      Result.Free;
      raise;
    end;
    Exit;
  end;
  if not (PixelFormat in [pf1bit, pf4bit, pf8bit, pf24bit]) then
    NotImplemented
  else if (PixelFormat in [pf1bit, pf4Bit]) then begin
    P := DIBFromBit(Bitmap.Handle, Bitmap.Palette, PixelFormat, Length);
    try
      Result := TMemoryStream.Create;
      try
        Result.Write(P^, Length);
        Result.Position := 0;
      except
        Result.Free;
        raise;
      end;
    finally
      FreeMem(P);
    end;
    Exit;
  end;
  { pf8bit - expand to 24bit first }
  InitData := DIBFromBit(Bitmap.Handle, Bitmap.Palette, pf24bit, Len);
  try
    BI := PBitmapInfoHeader(Longint(InitData) + SizeOf(TBitmapFileHeader));
    if BI^.biBitCount <> 24 then NotImplemented; {!!!}
    Bits := Pointer(Longint(BI) + SizeOf(TBitmapInfoHeader));
    InternalGetDIBSizes(Bitmap.Handle, NewHeaderSize, ImageSize, PixelFormat);
    Length := SizeOf(TBitmapFileHeader) + NewHeaderSize;
    P := AllocMem(Length);
    try
      ZeroMemory(P, Length);
      NewBI := PBitmapInfoHeader(Longint(P) + SizeOf(TBitmapFileHeader));
      NewPalette := PRGBPalette(Longint(NewBI) + SizeOf(TBitmapInfoHeader));
      FileHeader := PBitmapFileHeader(P);
      InitializeBitmapInfoHeader(Bitmap.Handle, NewBI^, PixelFormat);
      case Method of
        mmQuantize:
          begin
            ColorCount := 256;
            Quantize(BI^, Bits, Bits, ColorCount, NewPalette^);
            NewBI^.biClrImportant := ColorCount;
          end;
        mmTrunc784:
          begin
            TruncPal7R8G4B(NewPalette^);
            Trunc7R8G4B(BI^, Bits, Bits);
            NewBI^.biClrImportant := 224;
          end;
        mmTrunc666:
          begin
            TruncPal6R6G6B(NewPalette^);
            Trunc6R6G6B(BI^, Bits, Bits);
            NewBI^.biClrImportant := 216;
          end;
        mmTripel:
          begin
            TripelPal(NewPalette^);
            Tripel(BI^, Bits, Bits);
          end;
        mmHistogram:
          begin
            Histogram(BI^, NewPalette^, Bits, Bits,
              PixelFormatToColors(PixelFormat), 255, 255, 255);
          end;
        mmGrayscale:
          begin
            GrayPal(NewPalette^);
            GrayScale(BI^, Bits, Bits);
          end;
      end;
      with FileHeader^ do begin
        bfType := $4D42;
        bfSize := Length;
        bfOffBits := SizeOf(FileHeader^) + NewHeaderSize;
      end;
      Result := TMemoryStream.Create;
      try
        Result.Write(P^, Length);
        Result.Write(Bits^, ImageSize);
        Result.Position := 0;
      except
        Result.Free;
        raise;
      end;
    finally
      FreeMem(P);
    end;
  finally
    FreeMem(InitData);
  end;
end;

constructor TVcImageControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  InitializeCriticalSection(FLock);
  ControlStyle := ControlStyle + [csClickEvents, csCaptureMouse, csOpaque,
     csReplicatable, csDoubleClicks];
  Height := 105;
  Width := 105;
  ParentColor := True;
end;

destructor TVcImageControl.Destroy;
begin
  DeleteCriticalSection(FLock);
  inherited Destroy;
end;

procedure TVcImageControl.Lock;
begin
  EnterCriticalSection(FLock);
end;

procedure TVcImageControl.Unlock;
begin
  LeaveCriticalSection(FLock);
end;

procedure TVcImageControl.PaintImage;
var
  Save: Boolean;
begin
  with Canvas do begin
    Brush.Color := Color;
    FillRect(Bounds(0, 0, ClientWidth, ClientHeight));
  end;
  Save := FDrawing;
  FDrawing := True;
  try
    DoPaintImage;
  finally
    FDrawing := Save;
  end;
end;

procedure TVcImageControl.WMPaint(var Message: TWMPaint);
var
  DC, MemDC: HDC;
  MemBitmap, OldBitmap: HBITMAP;
begin
  if FPaintBuffered then
    inherited
  else if Message.DC <> 0 then begin
    Canvas.Lock;
    try
      DC := Message.DC;
      MemDC := GetDC(0);
      MemBitmap := CreateCompatibleBitmap(MemDC, ClientWidth, ClientHeight);
      ReleaseDC(0, MemDC);
      MemDC := CreateCompatibleDC(0);
      OldBitmap := SelectObject(MemDC, MemBitmap);
      try
        FPaintBuffered := True;
        try
          Message.DC := MemDC;
          WMPaint(Message);
          Message.DC := 0;
        finally
          FPaintBuffered := False;
        end;
        BitBlt(DC, 0, 0, ClientWidth, ClientHeight, MemDC, 0, 0, SRCCOPY);
      finally
        SelectObject(MemDC, OldBitmap);
        DeleteDC(MemDC);
        DeleteObject(MemBitmap);
      end;
    finally
      Canvas.Unlock;
    end;
  end;
end;

procedure TVcImageControl.PaintDesignRect;
begin
  if csDesigning in ComponentState then
    with Canvas do begin
      Pen.Style := psDash;
      Brush.Style := bsClear;
      Rectangle(0, 0, Width, Height);
    end;
end;

procedure TVcImageControl.DoPaintControl;
var
  DC: HDC;
begin
  if GetCurrentThreadID = MainThreadID then begin
    Repaint;
    Exit;
  end;
  DC := GetDC(Parent.Handle);
  try
    IntersectClipRect(DC, Left, Top, Left + Width, Top + Height);
    MoveWindowOrg(DC, Left, Top);
    Perform(WM_PAINT, DC, 0);
  finally
    ReleaseDC(Parent.Handle, DC);
  end;
end;

function TVcImageControl.DoPaletteChange: Boolean;
var
  ParentForm: TCustomForm;
  Tmp: TGraphic;
begin
  Result := False;
  Tmp := FGraphic;
  if Visible and (not (csLoading in ComponentState)) and (Tmp <> nil)
     and (Tmp.PaletteModified)  then
  begin
    if (GetPalette <> 0) then begin
      ParentForm := GetParentForm(Self);
      if Assigned(ParentForm) and ParentForm.Active and ParentForm.HandleAllocated then
      begin
        if FDrawing then
          ParentForm.Perform(WM_QUERYNEWPALETTE, 0, 0)
        else
          PostMessage(ParentForm.Handle, WM_QUERYNEWPALETTE, 0, 0);
        Result := True;
        Tmp.PaletteModified := False;
      end;
    end
    else begin
      Tmp.PaletteModified := False;
    end;
  end;
end;

procedure TVcImageControl.PictureChanged;
begin
  if not (csDestroying in ComponentState) then begin
    AdjustSize;
    if (FGraphic <> nil) then
      if DoPaletteChange and FDrawing then Update;
    if not FDrawing then Invalidate;
  end;
end;

{ TTimerThread }

type
  TTimerThread = class(TThread)
  private
    FOwner: TVcTimer;
    FInterval: Cardinal;
    FException: Exception;
    procedure HandleException;
  protected
    procedure Execute; override;
  public
    constructor Create(Timer: TVcTimer; Enabled: Boolean);
  end;

constructor TTimerThread.Create(Timer: TVcTimer; Enabled: Boolean);
begin
  FOwner := Timer;
  inherited Create(not Enabled);
  FInterval := 1000;
  FreeOnTerminate := True;
end;

procedure TTimerThread.HandleException;
begin
  if not (FException is EAbort) then begin
    if Assigned(Application.OnException) then
      Application.OnException(Self, FException)
    else
      Application.ShowException(FException);
  end;
end;

procedure TTimerThread.Execute;

  function ThreadClosed: Boolean;
  begin
    Result := Terminated or Application.Terminated or (FOwner = nil);
  end;

begin
  repeat
    if not ThreadClosed then
      if SleepEx(FInterval, False) = 0 then begin
        if not ThreadClosed and FOwner.FEnabled then
          with FOwner do
            if SyncEvent then Synchronize(Timer)
            else
              try
                Timer;
              except
                on E: Exception do begin
                  FException := E;
                  HandleException;
                end;
              end;
      end;
  until Terminated;
end;


constructor TVcTimer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEnabled := True;
  FInterval := 1000;
  FSyncEvent := True;
  FThreaded := True;
  FThreadPriority := tpNormal;
  FTimerThread := TTimerThread.Create(Self, False);
end;

destructor TVcTimer.Destroy;
begin
  Destroying;
  FEnabled := False;
  FOnTimer := nil;
  {TTimerThread(FTimerThread).FOwner := nil;}
  while FTimerThread.Suspended do FTimerThread.Resume;
  FTimerThread.Terminate;
  {if not SyncEvent then FTimerThread.WaitFor;}
  if FWindowHandle <> 0 then begin
    KillTimer(FWindowHandle, 1);
    DeallocateHWnd(FWindowHandle);
  end;
  inherited Destroy;
end;

procedure TVcTimer.WndProc(var Msg: TMessage);
begin
  with Msg do
    if Msg = WM_TIMER then
      try
        Timer;
      except
        Application.HandleException(Self);
      end
    else Result := DefWindowProc(FWindowHandle, Msg, wParam, lParam);
end;

procedure TVcTimer.UpdateTimer;
begin
  if FThreaded then begin
    if FWindowHandle <> 0 then begin
      KillTimer(FWindowHandle, 1);
      DeallocateHWnd(FWindowHandle);
      FWindowHandle := 0;
    end;
    if not FTimerThread.Suspended then FTimerThread.Suspend;
    TTimerThread(FTimerThread).FInterval := FInterval;
    if (FInterval <> 0) and FEnabled and Assigned(FOnTimer) then begin
      FTimerThread.Priority := FThreadPriority;
      while FTimerThread.Suspended do FTimerThread.Resume;
    end;
  end
  else begin
    if not FTimerThread.Suspended then FTimerThread.Suspend;
    if FWindowHandle = 0 then FWindowHandle := AllocateHWnd(WndProc)
    else KillTimer(FWindowHandle, 1);
    if (FInterval <> 0) and FEnabled and Assigned(FOnTimer) then
      if SetTimer(FWindowHandle, 1, FInterval, nil) = 0 then
        raise EOutOfResources.Create('NoTimers');
  end;
end;

procedure TVcTimer.SetEnabled(Value: Boolean);
begin
  if Value <> FEnabled then begin
    FEnabled := Value;
    UpdateTimer;
  end;
end;

procedure TVcTimer.SetInterval(Value: Cardinal);
begin
  if Value <> FInterval then begin
    FInterval := Value;
    UpdateTimer;
  end;
end;


procedure TVcTimer.SetThreaded(Value: Boolean);
begin
  if Value <> FThreaded then begin
    FThreaded := Value;
    UpdateTimer;
  end;
end;

procedure TVcTimer.SetThreadPriority(Value: TThreadPriority);
begin
  if Value <> FThreadPriority then begin
    FThreadPriority := Value;
    if FThreaded then UpdateTimer;
  end;
end;

procedure TVcTimer.Synchronize(Method: TThreadMethod);
begin
  if (FTimerThread <> nil) then begin
    with TTimerThread(FTimerThread) do begin
      if Suspended or Terminated then Method
      else TTimerThread(FTimerThread).Synchronize(Method);
    end;
  end
  else Method;
end;

procedure TVcTimer.SetOnTimer(Value: TNotifyEvent);
begin
  if Assigned(FOnTimer) <> Assigned(Value) then begin
    FOnTimer := Value;
    UpdateTimer;
  end else FOnTimer := Value;
end;

procedure TVcTimer.Timer;
begin
  if FEnabled and not (csDestroying in ComponentState) and
    Assigned(FOnTimer) then FOnTimer(Self);
end;
function Max(A, B: Longint): Longint;
begin
  if A > B then Result := A
  else Result := B;
end;

function Min(A, B: Longint): Longint;
begin
  if A < B then Result := A
  else Result := B;
end;

function MaxInteger(const Values: array of Longint): Longint;
var
  I: Cardinal;
begin
  Result := Values[0];
  for I := 0 to High(Values) do
    if Values[I] > Result then Result := Values[I];
end;

function MinInteger(const Values: array of Longint): Longint;
var
  I: Cardinal;
begin
  Result := Values[0];
  for I := 0 to High(Values) do
    if Values[I] < Result then Result := Values[I];
end;


type
  TParentControl = class(TWinControl);

function PaletteColor(Color: TColor): Longint;
begin
  Result := ColorToRGB(Color) or PaletteMask;
end;

procedure CopyParentImage(Control: TControl; Dest: TCanvas);
var
  I, Count, X, Y, SaveIndex: Integer;
  DC: HDC;
  R, SelfR, CtlR: TRect;
begin
  if (Control = nil) or (Control.Parent = nil) then Exit;
  Count := Control.Parent.ControlCount;
  DC := Dest.Handle;
  with Control.Parent do ControlState := ControlState + [csPaintCopy];
  try
    with Control do begin
      SelfR := Bounds(Left, Top, Width, Height);
      X := -Left; Y := -Top;
    end;
    { Copy parent control image }
    SaveIndex := SaveDC(DC);
    try
      SetViewportOrgEx(DC, X, Y, nil);
      IntersectClipRect(DC, 0, 0, Control.Parent.ClientWidth,
        Control.Parent.ClientHeight);
      with TParentControl(Control.Parent) do begin
        Perform(WM_ERASEBKGND, DC, 0);
        PaintWindow(DC);
      end;
    finally
      RestoreDC(DC, SaveIndex);
    end;
    { Copy images of graphic controls }
    for I := 0 to Count - 1 do begin
      if Control.Parent.Controls[I] = Control then Break
      else if (Control.Parent.Controls[I] <> nil) and
        (Control.Parent.Controls[I] is TGraphicControl) then
      begin
        with TGraphicControl(Control.Parent.Controls[I]) do begin
          CtlR := Bounds(Left, Top, Width, Height);
          if Bool(IntersectRect(R, SelfR, CtlR)) and Visible then begin
            ControlState := ControlState + [csPaintCopy];
            SaveIndex := SaveDC(DC);
            try
              SaveIndex := SaveDC(DC);
              SetViewportOrgEx(DC, Left + X, Top + Y, nil);
              IntersectClipRect(DC, 0, 0, Width, Height);
              Perform(WM_PAINT, DC, 0);
            finally
              RestoreDC(DC, SaveIndex);
              ControlState := ControlState - [csPaintCopy];
            end;
          end;
        end;
      end;
    end;
  finally
    with Control.Parent do ControlState := ControlState - [csPaintCopy];
  end;
end;

{ Transparent bitmap }

procedure StretchBltTransparent(DstDC: HDC; DstX, DstY, DstW, DstH: Integer;
  SrcDC: HDC; SrcX, SrcY, SrcW, SrcH: Integer; Palette: HPalette;
  TransparentColor: TColorRef);
var
  Color: TColorRef;
  bmAndBack, bmAndObject, bmAndMem, bmSave: HBitmap;
  bmBackOld, bmObjectOld, bmMemOld, bmSaveOld: HBitmap;
  MemDC, BackDC, ObjectDC, SaveDC: HDC;
  palDst, palMem, palSave, palObj: HPalette;
begin
  { Create some DCs to hold temporary data }
  BackDC := CreateCompatibleDC(DstDC);
  ObjectDC := CreateCompatibleDC(DstDC);
  MemDC := CreateCompatibleDC(DstDC);
  SaveDC := CreateCompatibleDC(DstDC);
  { Create a bitmap for each DC }
  bmAndObject := CreateBitmap(SrcW, SrcH, 1, 1, nil);
  bmAndBack := CreateBitmap(SrcW, SrcH, 1, 1, nil);
  bmAndMem := CreateCompatibleBitmap(DstDC, DstW, DstH);
  bmSave := CreateCompatibleBitmap(DstDC, SrcW, SrcH);
  { Each DC must select a bitmap object to store pixel data }
  bmBackOld := SelectObject(BackDC, bmAndBack);
  bmObjectOld := SelectObject(ObjectDC, bmAndObject);
  bmMemOld := SelectObject(MemDC, bmAndMem);
  bmSaveOld := SelectObject(SaveDC, bmSave);
  { Select palette }
  palDst := 0; palMem := 0; palSave := 0; palObj := 0;
  if Palette <> 0 then begin
    palDst := SelectPalette(DstDC, Palette, True);
    RealizePalette(DstDC);
    palSave := SelectPalette(SaveDC, Palette, False);
    RealizePalette(SaveDC);
    palObj := SelectPalette(ObjectDC, Palette, False);
    RealizePalette(ObjectDC);
    palMem := SelectPalette(MemDC, Palette, True);
    RealizePalette(MemDC);
  end;
  { Set proper mapping mode }
  SetMapMode(SrcDC, GetMapMode(DstDC));
  SetMapMode(SaveDC, GetMapMode(DstDC));
  { Save the bitmap sent here }
  BitBlt(SaveDC, 0, 0, SrcW, SrcH, SrcDC, SrcX, SrcY, SRCCOPY);
  { Set the background color of the source DC to the color,         }
  { contained in the parts of the bitmap that should be transparent }
  Color := SetBkColor(SaveDC, PaletteColor(TransparentColor));
  { Create the object mask for the bitmap by performing a BitBlt()  }
  { from the source bitmap to a monochrome bitmap                   }
  BitBlt(ObjectDC, 0, 0, SrcW, SrcH, SaveDC, 0, 0, SRCCOPY);
  { Set the background color of the source DC back to the original  }
  SetBkColor(SaveDC, Color);
  { Create the inverse of the object mask }
  BitBlt(BackDC, 0, 0, SrcW, SrcH, ObjectDC, 0, 0, NOTSRCCOPY);
  { Copy the background of the main DC to the destination }
  BitBlt(MemDC, 0, 0, DstW, DstH, DstDC, DstX, DstY, SRCCOPY);
  { Mask out the places where the bitmap will be placed }
  StretchBlt(MemDC, 0, 0, DstW, DstH, ObjectDC, 0, 0, SrcW, SrcH, SRCAND);
  { Mask out the transparent colored pixels on the bitmap }
  BitBlt(SaveDC, 0, 0, SrcW, SrcH, BackDC, 0, 0, SRCAND);
  { XOR the bitmap with the background on the destination DC }
  StretchBlt(MemDC, 0, 0, DstW, DstH, SaveDC, 0, 0, SrcW, SrcH, SRCPAINT);
  { Copy the destination to the screen }
  BitBlt(DstDC, DstX, DstY, DstW, DstH, MemDC, 0, 0,
    SRCCOPY);
  { Restore palette }
  if Palette <> 0 then begin
    SelectPalette(MemDC, palMem, False);
    SelectPalette(ObjectDC, palObj, False);
    SelectPalette(SaveDC, palSave, False);
    SelectPalette(DstDC, palDst, True);
  end;
  { Delete the memory bitmaps }
  DeleteObject(SelectObject(BackDC, bmBackOld));
  DeleteObject(SelectObject(ObjectDC, bmObjectOld));
  DeleteObject(SelectObject(MemDC, bmMemOld));
  DeleteObject(SelectObject(SaveDC, bmSaveOld));
  { Delete the memory DCs }
  DeleteDC(MemDC);
  DeleteDC(BackDC);
  DeleteDC(ObjectDC);
  DeleteDC(SaveDC);
end;

procedure StretchBitmapRectTransparent(Dest: TCanvas; DstX, DstY,
  DstW, DstH: Integer; SrcRect: TRect; Bitmap: TBitmap;
  TransparentColor: TColor);
begin
  with SrcRect do
    StretchBitmapTransparent(Dest, Bitmap, TransparentColor,
    DstX, DstY, DstW, DstH, Left, Top, Right - Left, Bottom - Top);
end;

procedure StretchBitmapTransparent(Dest: TCanvas; Bitmap: TBitmap;
  TransparentColor: TColor; DstX, DstY, DstW, DstH, SrcX, SrcY,
  SrcW, SrcH: Integer);
var
  CanvasChanging: TNotifyEvent;
begin
  if DstW <= 0 then DstW := Bitmap.Width;
  if DstH <= 0 then DstH := Bitmap.Height;
  if (SrcW <= 0) or (SrcH <= 0) then begin
    SrcX := 0; SrcY := 0;
    SrcW := Bitmap.Width;
    SrcH := Bitmap.Height;
  end;
  if not Bitmap.Monochrome then
    SetStretchBltMode(Dest.Handle, STRETCH_DELETESCANS);
  CanvasChanging := Bitmap.Canvas.OnChanging;
  Bitmap.Canvas.Lock;
  try
    Bitmap.Canvas.OnChanging := nil;
    if TransparentColor = clNone then begin
      StretchBlt(Dest.Handle, DstX, DstY, DstW, DstH, Bitmap.Canvas.Handle,
        SrcX, SrcY, SrcW, SrcH, Dest.CopyMode);
    end
    else begin
      if TransparentColor = clDefault then
        TransparentColor := Bitmap.Canvas.Pixels[0, Bitmap.Height - 1];
      if Bitmap.Monochrome then TransparentColor := clWhite
      else TransparentColor := ColorToRGB(TransparentColor);
      StretchBltTransparent(Dest.Handle, DstX, DstY, DstW, DstH,
        Bitmap.Canvas.Handle, SrcX, SrcY, SrcW, SrcH, Bitmap.Palette,
        TransparentColor);
    end;
  finally
    Bitmap.Canvas.OnChanging := CanvasChanging;
    Bitmap.Canvas.Unlock;
  end;
end;

function WidthOf(R: TRect): Integer;
begin
  Result := R.Right - R.Left;
end;

function HeightOf(R: TRect): Integer;
begin
  Result := R.Bottom - R.Top;
end;

{ THackBitmap }

type
  THackBitmap = class(TBitmap)
  protected
    procedure Draw(ACanvas: TCanvas; const Rect: TRect); override;
  end;

procedure THackBitmap.Draw(ACanvas: TCanvas; const Rect: TRect);
begin
  if not Empty then Canvas.Lock;
  try
    inherited Draw(ACanvas, Rect);
  finally
    if not Empty then Canvas.Unlock;
  end;
end;

type
  THack = class(TBitmap);

var
  Hooked: Boolean = False;

type
  PPointer = ^Pointer;

function GetVirtualMethodAddress(AClass: TClass; AIndex: Integer): Pointer;
var
  Table: PPointer;
begin
  Table := PPointer(AClass);
  Inc(Table, AIndex - 1);
  Result := Table^;
end;

function SetVirtualMethodAddress(AClass: TClass; AIndex: Integer;
  NewAddress: Pointer): Pointer;
const
  PageSize = SizeOf(Pointer);
var
  Table: PPointer;
  SaveFlag: DWORD;
begin
  Table := PPointer(AClass);
  Inc(Table, AIndex - 1);
  Result := Table^;
  if VirtualProtect(Table, PageSize, PAGE_EXECUTE_READWRITE, @SaveFlag) then
  try
    Table^ := NewAddress;
  finally
    VirtualProtect(Table, PageSize, SaveFlag, @SaveFlag);
  end;
end;

function FindVirtualMethodIndex(AClass: TClass; MethodAddr: Pointer): Integer;
begin
  Result := 0;
  repeat
    Inc(Result);
  until (GetVirtualMethodAddress(AClass, Result) = MethodAddr);
end;

procedure HookBitmap;
var
  Index: Integer;
begin
  if Hooked then Exit;
  Index := FindVirtualMethodIndex(THack, @THack.Draw);
  SetVirtualMethodAddress(TBitmap, Index, @THackBitmap.Draw);
  Hooked := True;
end; 

end.
 