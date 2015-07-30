unit FPanel;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, Messages, Forms,
  Windows, Graphics;

type
  TFPanel = class(TCustomControl)
  private
    FAutoSizeDocking: Boolean;
    FBevelInner: TPanelBevel;
    FBevelOuter: TPanelBevel;
    FBevelWidth: TBevelWidth;
    FBorderWidth: TBorderWidth;
    FBorderStyle: TBorderStyle;
    FFullRepaint: Boolean;
    FLocked: Boolean;
    FParentBackgroundSet: Boolean;
    FAlignment: TAlignment;
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
    property ParentColor default False;
    procedure SetParentBackground(Value: Boolean); override;
  public
//    property ParentBackground stored FParentBackgroundSet;    //!!!20.12.05
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
//    property BevelInner;  //!!!20.12.05
//    property BevelOuter;   //!!!20.12.05
//    property BevelWidth;     //!!!20.12.05
    property BiDiMode;
//    property BorderWidth;  //!!!20.12.05
//    property BorderStyle;   //!!!20.12.05
    property Caption;
//    property Color;      //!!!20.12.05
    property Constraints;
    property Ctl3D;
    property UseDockManager default True;
    property DockSite;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FullRepaint: Boolean read FFullRepaint write FFullRepaint default True;
//    property FullRepaint;    //!!!20.12.05
    property Font;
    property Locked: Boolean read FLocked write FLocked default False;
//    property Locked;            //!!!20.12.05
    property ParentBiDiMode;
    property ParentBackground;   //!!!20.12.05
//    property ParentColor;     //!!!20.12.05
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

{ TFPanel }

constructor TFPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csSetCaption, csOpaque, csDoubleClicks, csReplicatable];
  { When themes are on in an application default to making
    TFPanel's paint with their ParentBackground }
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
end;

procedure TFPanel.CreateParams(var Params: TCreateParams);
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

procedure TFPanel.CMBorderChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TFPanel.CMTextChanged(var Message: TMessage);
begin
  Invalidate;
end;

procedure TFPanel.CMCtl3DChanged(var Message: TMessage);
begin
  if NewStyleControls and (FBorderStyle = bsSingle) then RecreateWnd;
  inherited;
end;

procedure TFPanel.CMIsToolControl(var Message: TMessage);
begin
  if not FLocked then Message.Result := 1;
end;

procedure TFPanel.WMWindowPosChanged(var Message: TWMWindowPosChanged);
var
  BevelPixels: Integer;
  Rect: TRect;
begin
  if FullRepaint or (Caption <> '') then
    Invalidate
  else
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
  end;
  inherited;
end;

procedure TFPanel.Paint;
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
    Brush.Style := bsClear;
    Font := Self.Font;
    FontHeight := TextHeight('W');
    with Rect do
    begin
//      Top := ((Bottom + Top) - FontHeight) div 2;
      Top := Top + FontHeight div 4;
//      Bottom := Top + FontHeight;
    end;
    Flags := DT_TOP	or DT_EXPANDTABS or Alignments[FAlignment];
    Flags := DrawTextBiDiModeFlags(Flags);
    DrawText(Handle, PChar(Caption), -1, Rect, Flags);
  end;
end;

procedure TFPanel.SetAlignment(Value: TAlignment);
begin
  FAlignment := Value;
  Invalidate;
end;

procedure TFPanel.SetBevelInner(Value: TPanelBevel);
begin
  FBevelInner := Value;
  Realign;
  Invalidate;
end;

procedure TFPanel.SetBevelOuter(Value: TPanelBevel);
begin
  FBevelOuter := Value;
  Realign;
  Invalidate;
end;

procedure TFPanel.SetBevelWidth(Value: TBevelWidth);
begin
  FBevelWidth := Value;
  Realign;
  Invalidate;
end;

procedure TFPanel.SetBorderWidth(Value: TBorderWidth);
begin
  FBorderWidth := Value;
  Realign;
  Invalidate;
end;

procedure TFPanel.SetBorderStyle(Value: TBorderStyle);
begin
  if FBorderStyle <> Value then
  begin
    FBorderStyle := Value;
    RecreateWnd;
  end;
end;

function TFPanel.GetControlsAlignment: TAlignment;
begin
  Result := FAlignment;
end;

procedure TFPanel.AdjustClientRect(var Rect: TRect);
var
  BevelSize: Integer;
begin
  inherited AdjustClientRect(Rect);
  InflateRect(Rect, -BorderWidth, -BorderWidth);
  BevelSize := 0;
  if BevelOuter <> bvNone then Inc(BevelSize, BevelWidth);
  if BevelInner <> bvNone then Inc(BevelSize, BevelWidth);
  InflateRect(Rect, -BevelSize, -BevelSize);
end;

procedure TFPanel.CMDockClient(var Message: TCMDockClient);
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
procedure TFPanel.SetParentBackground(Value: Boolean);
begin
  { TCustomPanel needs to not have csOpaque when painting
    with the ParentBackground in Themed applications }
  if Value then
    ControlStyle := ControlStyle - [csOpaque]
  else
    ControlStyle := ControlStyle + [csOpaque];
  FParentBackgroundSet := True;
  inherited;
end;

function TFPanel.CanAutoSize(var NewWidth, NewHeight: Integer): Boolean;
begin
  Result := (not FAutoSizeDocking) and inherited CanAutoSize(NewWidth, NewHeight);
end;

procedure Register;
begin
  RegisterComponents('Samples', [TFPanel]);
end;

end.
