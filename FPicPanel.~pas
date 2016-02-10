unit FPicPanel;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, Messages, Forms,
  Windows, Graphics, ImgList, CommCtrl;//ComCtrls;

type
  TFPicPanel = class(TCustomControl)
  private
    FAutoSizeDocking: Boolean;
    FBevelInner: TPanelBevel;
    FBevelOuter: TPanelBevel;
    FBevelWidth: TBevelWidth;
    FBorderWidth: TBorderWidth;
    FBorderStyle: TBorderStyle;
    FFullRepaint: Boolean;
    FLocked: Boolean;
    FImages: TCustomImageList;
//    FImageChangeLink: TChangeLink;
    FImageIndex: TImageIndex;
    FHotImageIndex: TImageIndex;
    FParentBackgroundSet: Boolean;
    FAlignment: TAlignment;
    FTransparentSet:Boolean;
    FMargLeft,FMargTop,FMargTextTop,FMargTextLeft:Integer;
    procedure CMBorderChanged(var Message: TMessage); message CM_BORDERCHANGED;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CMCtl3DChanged(var Message: TMessage); message CM_CTL3DCHANGED;
    procedure CMIsToolControl(var Message: TMessage); message CM_ISTOOLCONTROL;
    procedure WMWindowPosChanged(var Message: TWMWindowPosChanged); message WM_WINDOWPOSCHANGED;
    procedure SetAlignment(Value: TAlignment);
    procedure SetBevelInner(Value: TPanelBevel);
    procedure SetBevelOuter(Value: TPanelBevel);
    procedure SetBevelWidth(Value: TBevelWidth);
    procedure SetBorderWidth(Value: TBorderWidth);
    procedure SetBorderStyle(Value: TBorderStyle);
    procedure SetImages(Value: TCustomImageList);
    procedure SetImageList(Value: HImageList);
    procedure SetImageIndex(Value: TImageIndex);
    procedure SetHotImageIndex(Value: TImageIndex);
    procedure SetTransparent(Value: Boolean);
    function GetTransparent: Boolean;
    procedure CMDockClient(var Message: TCMDockClient); message CM_DOCKCLIENT;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure AdjustClientRect(var Rect: TRect); override;
    function CanAutoSize(var NewWidth, NewHeight: Integer): Boolean; override;
    procedure Paint; override;
//    property Alignment: TAlignment read FAlignment write SetAlignment default taCenter;
//    property BevelOuter: TPanelBevel read FBevelOuter write SetBevelOuter default bvRaised;
//    property BevelInner: TPanelBevel read FBevelInner write SetBevelInner default bvNone;
//    property BevelWidth: TBevelWidth read FBevelWidth write SetBevelWidth default 1;
//    property BorderWidth: TBorderWidth read FBorderWidth write SetBorderWidth default 0;
//    property BorderStyle: TBorderStyle read FBorderStyle write SetBorderStyle default bsNone;
//    property Color default clBtnFace;
//    property FullRepaint: Boolean read FFullRepaint write FFullRepaint default True;
//    property Locked: Boolean read FLocked write FLocked default False;
//    property ParentColor default False;
//!!!    procedure SetParentBackground(Value: Boolean); override;
  public
//    property ParentBackground stored FParentBackgroundSet;
    property DockManager;
    property Canvas;
    constructor Create(AOwner: TComponent); override;
    function GetControlsAlignment: TAlignment; override;
  published
    property Align;
    property Alignment: TAlignment read FAlignment write SetAlignment default taCenter;
//    property Alignment;
    property Anchors;
    property AutoSize;
    property BevelOuter: TPanelBevel read FBevelOuter write SetBevelOuter default bvRaised;
    property BevelInner: TPanelBevel read FBevelInner write SetBevelInner default bvNone;
    property BevelWidth: TBevelWidth read FBevelWidth write SetBevelWidth default 1;
    property BorderWidth: TBorderWidth read FBorderWidth write SetBorderWidth default 0;
    property BorderStyle: TBorderStyle read FBorderStyle write SetBorderStyle default bsNone;
    property Color default clBtnFace;
//    property BevelInner;
//    property BevelOuter;
//    property BevelWidth;
    property BiDiMode;
//    property BorderWidth;
//    property BorderStyle;
    property Caption;
    property Images: TCustomImageList read FImages write SetImages;
    property ImageIndex: TImageIndex read FImageIndex write SetImageIndex default -1;//SetImageIndex stored IsImageIndexStored default -1;
    property HotImageIndex: TImageIndex read FHotImageIndex write SetHotImageIndex default -1;//SetImageIndex stored IsImageIndexStored default -1;
    property Transparent: Boolean read GetTransparent write SetTransparent stored FTransparentSet;
//    property Transparent: Boolean read GetTransparent write SetTransparent default True;
    property MargLeft: Integer read FMargLeft write FMargLeft default 1;
    property MargTop: Integer read FMargTop write FMargTop default 1;
    property MargTextTop: Integer read FMargTextTop write FMargTextTop default 3;
    property MargTextLeft: Integer read FMargTextLeft write FMargTextLeft default 35;
//    property Color;
    property Constraints;
    property Ctl3D;
    property UseDockManager default True;
    property DockSite;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FullRepaint: Boolean read FFullRepaint write FFullRepaint default True;
//    property FullRepaint;
    property Font;
    property Locked: Boolean read FLocked write FLocked default False;
//    property Locked;
    property ParentBiDiMode;
    property ParentBackground;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnCanResize;
    property OnClick;
    property OnConstrainedResize;
    property OnContextPopup;
    property OnDockDrop;
    property OnDockOver;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetSiteInfo;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnResize;
    property OnStartDock;
    property OnStartDrag;
    property OnUnDock;
  end;

procedure Register;

implementation

uses  Themes;//Consts, Dialogs, Themes;

{ TFPicPanel }

constructor TFPicPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csSetCaption, csDoubleClicks, csReplicatable]; //csOpaque,
  { When themes are on in an application default to making
    TFPicPanel's paint with their ParentBackground }
  if ThemeServices.ThemesEnabled then
    ControlStyle := ControlStyle + [csParentBackground] - [csOpaque];
  Width := 185;
  Height := 41;
  FAlignment := taCenter;
  BevelOuter := bvRaised;
  BevelWidth := 1;
  FBorderStyle := bsNone;
  Color := clBtnFace;
  FFullRepaint := True;
  UseDockManager := True;
  FImages:=nil;
  FImageIndex:=-1;
  FHotImageIndex:=-1;
end;

procedure TFPicPanel.SetImageList(Value: HImageList);
begin
  if HandleAllocated then Perform(TB_SETIMAGELIST, 0, Value);
  Invalidate;
end;

procedure TFPicPanel.SetImages(Value: TCustomImageList);
begin
//  if FImages <> nil then FImages.UnRegisterChanges(FImageChangeLink);
  FImages := Value;
  if FImages <> nil then
  begin
//    FImages.RegisterChanges(FImageChangeLink);
    FImages.FreeNotification(Self);
  end
  else
    SetImageList(0);
end;

procedure TFPicPanel.SetImageIndex(Value: TImageIndex);
begin
 if Value <> FImageIndex then
  begin
  FImageIndex:=Value;
  Invalidate;
  end;
end;

procedure TFPicPanel.SetHotImageIndex(Value: TImageIndex);
begin
 if Value <> FHotImageIndex then
  begin
  FHotImageIndex:=Value;
  Invalidate;
  end;
end;

function TFPicPanel.GetTransparent: Boolean;
begin
  Result := not (csOpaque in ControlStyle);
end;

procedure TFPicPanel.SetTransparent(Value: Boolean);
begin
  if Transparent <> Value then
  begin
    if Value then
      ControlStyle := ControlStyle - [csOpaque] 
    else
      ControlStyle := ControlStyle + [csOpaque];
    Invalidate;
  end;
  FTransparentSet := True;
end;

procedure TFPicPanel.CreateParams(var Params: TCreateParams);
const
  BorderStyles: array[TBorderStyle] of DWORD = (0, WS_BORDER);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := Style or BorderStyles[FBorderStyle];
    if NewStyleControls and Ctl3D and (FBorderStyle = bsSingle) then
    begin
      Style := Style and not WS_BORDER;
      ExStyle := ExStyle or WS_EX_CLIENTEDGE;
    end;
    WindowClass.style := WindowClass.style and not (CS_HREDRAW or CS_VREDRAW);
  end;
end;

procedure TFPicPanel.CMBorderChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TFPicPanel.CMTextChanged(var Message: TMessage);
begin
  Invalidate;
end;

procedure TFPicPanel.CMCtl3DChanged(var Message: TMessage);
begin
  if NewStyleControls and (FBorderStyle = bsSingle) then RecreateWnd;
  inherited;
end;

procedure TFPicPanel.CMIsToolControl(var Message: TMessage);
begin
  if not FLocked then Message.Result := 1;
end;

procedure TFPicPanel.WMWindowPosChanged(var Message: TWMWindowPosChanged);
//var
//  BevelPixels: Integer;
//  Rect: TRect;
begin
//  if FullRepaint or (Caption <> '') then
    Invalidate;
{  else
  begin
    BevelPixels := BorderWidth;
    if BevelInner <> bvNone then Inc(BevelPixels, BevelWidth);
    if BevelOuter <> bvNone then Inc(BevelPixels, BevelWidth);
    if BevelPixels > 0 then
    begin
      Rect.Right := Width;
      Rect.Bottom := Height;
      if Message.WindowPos^.cx <> Rect.Right then
      begin
        Rect.Top := 0;
        Rect.Left := Rect.Right - BevelPixels - 1;
        InvalidateRect(Handle, @Rect, True);
      end;
      if Message.WindowPos^.cy <> Rect.Bottom then
      begin
        Rect.Left := 0;
        Rect.Top := Rect.Bottom - BevelPixels - 1;
        InvalidateRect(Handle, @Rect, True);
      end;
    end;
  end; }
  inherited;
end;

procedure TFPicPanel.Paint;
const
  Alignments: array[TAlignment] of Longint = (DT_LEFT, DT_RIGHT, DT_CENTER);
var
  Rect: TRect;
  TopColor, BottomColor: TColor;
  FontHeight: Integer;
  Flags: Longint;

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := clBtnHighlight;
    if Bevel = bvLowered then TopColor := clBtnShadow;
    BottomColor := clBtnShadow;
    if Bevel = bvLowered then BottomColor := clBtnHighlight;
  end;

begin
  Rect := GetClientRect;
  if not Transparent then
    begin
    if BevelOuter <> bvNone then
      begin
      AdjustColors(BevelOuter);
      Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
      end;
    Frame3D(Canvas, Rect, Color, Color, BorderWidth);
    if BevelInner <> bvNone then
      begin
      AdjustColors(BevelInner);
      Frame3D(Canvas, Rect, TopColor, BottomColor, BevelWidth);
      end;
    with Canvas do
      begin
      if  not ThemeServices.ThemesEnabled or not ParentBackground then
          begin
          Brush.Color := Color;
          FillRect(Rect);
          end;
    end;
  end;
// ========= Drow Image
  if (FImages <> nil) and (ImageIndex >= 0) then
      FImages.Draw(Canvas,MargLeft,MargTop,ImageIndex);

  if Caption <> '' then
  with Canvas do
    begin
    Brush.Style := bsClear;
    Font := Self.Font;
    FontHeight := TextHeight('W');
    with Rect do
      begin
      Top := Top + FMargTextTop;
      Left := Left + FMargTextLeft;
//      Top := ((Bottom + Top) - FontHeight) div 2;
//      Top := Top + FontHeight div 4;
//      Bottom := Top + FontHeight;
      end;
    Flags := DT_TOP	or DT_EXPANDTABS or Alignments[FAlignment];
    Flags := DrawTextBiDiModeFlags(Flags);
    DrawText(Handle, PChar(Caption), -1, Rect, Flags);
    end;
end;

procedure TFPicPanel.SetAlignment(Value: TAlignment);
begin
  FAlignment := Value;
  Invalidate;
end;

procedure TFPicPanel.SetBevelInner(Value: TPanelBevel);
begin
  FBevelInner := Value;
  Realign;
  Invalidate;
end;

procedure TFPicPanel.SetBevelOuter(Value: TPanelBevel);
begin
  FBevelOuter := Value;
  Realign;
  Invalidate;
end;

procedure TFPicPanel.SetBevelWidth(Value: TBevelWidth);
begin
  FBevelWidth := Value;
  Realign;
  Invalidate;
end;

procedure TFPicPanel.SetBorderWidth(Value: TBorderWidth);
begin
  FBorderWidth := Value;
  Realign;
  Invalidate;
end;

procedure TFPicPanel.SetBorderStyle(Value: TBorderStyle);
begin
  if FBorderStyle <> Value then
  begin
    FBorderStyle := Value;
    RecreateWnd;
  end;
end;

function TFPicPanel.GetControlsAlignment: TAlignment;
begin
  Result := FAlignment;
end;

procedure TFPicPanel.AdjustClientRect(var Rect: TRect);
var
  BevelSize: Integer;
begin
  inherited AdjustClientRect(Rect);
{  InflateRect(Rect, -BorderWidth, -BorderWidth);
  BevelSize := 0;
  if BevelOuter <> bvNone then Inc(BevelSize, BevelWidth);
  if BevelInner <> bvNone then Inc(BevelSize, BevelWidth);
  InflateRect(Rect, -BevelSize, -BevelSize); }
end;

procedure TFPicPanel.CMDockClient(var Message: TCMDockClient);
var
  R: TRect;
  Dim: Integer;
begin
  if AutoSize then
  begin
    FAutoSizeDocking := True;
    try
      R := Message.DockSource.DockRect;
      case Align of
        alLeft: if Width = 0 then Width := R.Right - R.Left;
        alRight: if Width = 0 then
          begin
            Dim := R.Right - R.Left;
            SetBounds(Left - Dim, Top, Dim, Height);
          end;
        alTop: if Height = 0 then Height := R.Bottom - R.Top;
        alBottom: if Height = 0 then
          begin
            Dim := R.Bottom - R.Top;
            SetBounds(Left, Top - Dim, Width, Dim);
          end;
      end;
      inherited;
      Exit;
    finally
      FAutoSizeDocking := False;
    end;
  end;
  inherited;
end;

//!!!procedure TFPicPanel.SetParentBackground(Value: Boolean);
//begin
  { TCustomPanel needs to not have csOpaque when painting
    with the ParentBackground in Themed applications }
{  if Value then
    ControlStyle := ControlStyle - [csOpaque]
  else
    ControlStyle := ControlStyle + [csOpaque];
  FParentBackgroundSet := True;
  inherited;
end;  }

function TFPicPanel.CanAutoSize(var NewWidth, NewHeight: Integer): Boolean;
begin
  Result := (not FAutoSizeDocking) and inherited CanAutoSize(NewWidth, NewHeight);
end;

procedure Register;
begin
  RegisterComponents('Samples', [TFPicPanel]);
end;

end.
