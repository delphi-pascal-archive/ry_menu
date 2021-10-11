unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Menus, ImgList, RyMenus, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    PrintSetup1: TMenuItem;
    Print1: TMenuItem;
    N2: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Edit1: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    N5: TMenuItem;
    Undo1: TMenuItem;
    Window1: TMenuItem;
    Show1: TMenuItem;
    Hide1: TMenuItem;
    N6: TMenuItem;
    ArrangeAll1: TMenuItem;
    Cascade1: TMenuItem;
    Tile1: TMenuItem;
    NewWindow1: TMenuItem;
    N22: TMenuItem;
    N17: TMenuItem;
    N16: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N10: TMenuItem;
    ImageList: TImageList;
    N3: TMenuItem;
    N4: TMenuItem;
    N15: TMenuItem;
    N13: TMenuItem;
    N7: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    PopupMenu1: TPopupMenu;
    NoCheckedNoImage1: TMenuItem;
    NoCheckedImage1: TMenuItem;
    CheckedNoImage1: TMenuItem;
    CheckedImage1: TMenuItem;
    N8: TMenuItem;
    WithSubMenu1: TMenuItem;
    Show2: TMenuItem;
    Hide2: TMenuItem;
    N9: TMenuItem;
    ArrangeAll2: TMenuItem;
    Cascade2: TMenuItem;
    Tile2: TMenuItem;
    NewWindow2: TMenuItem;
    N11: TMenuItem;
    RadioItemNoCheckedNoImage1: TMenuItem;
    RadioItemCheckedNoImage1: TMenuItem;
    RadioItemNoCheckedNoImage2: TMenuItem;
    N21: TMenuItem;
    RadioItemNoCheckedImage1: TMenuItem;
    RadioItemCheckedImage1: TMenuItem;
    RadioItemNoCheckedImage2: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    Brr: TMenuItem;
    RadioItemNoCheckedImage3: TMenuItem;
    RadioItemCheckedImage2: TMenuItem;
    RadioItemNoCheckedImage4: TMenuItem;
    N23: TMenuItem;
    RadioItemNoCheckedNoImage3: TMenuItem;
    RadioItemCheckedNoImage2: TMenuItem;
    RadioItemNoCheckedNoImage4: TMenuItem;
    N24: TMenuItem;
    WithSubMenu2: TMenuItem;
    Show3: TMenuItem;
    Hide3: TMenuItem;
    N25: TMenuItem;
    ArrangeAll3: TMenuItem;
    Cascade3: TMenuItem;
    Tile3: TMenuItem;
    NewWindow3: TMenuItem;
    N26: TMenuItem;
    CheckedImage2: TMenuItem;
    CheckedNoImage2: TMenuItem;
    NoCheckedImage2: TMenuItem;
    NoCheckedNoImage2: TMenuItem;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    PopupMenu4: TPopupMenu;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    MyOtherDrawer: TRyMenu;
    StartMenu: TRyMenu;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

const
  MenuWidth=150;
  MenuHeight=25;

{$R *.DFM}

constructor TForm1.Create(AOwner: TComponent);
begin
 inherited;
 RyMenu.Add(MainMenu1); // добавляем всЁ меню на перерисовку
 // ВНИМАНИЕ!
 // Собственноручно, в DesignTime, установите OwnerDraw у MainMenu в True
 //
 RyMenu.Add(PopupMenu2); // добавляем всЁ popupmenu на перерисовку
 //
 MyOtherDrawer:=TRyMenu.Create(Self); // создаем свой TRyMenu
 MyOtherDrawer.SelectedColor:=clRed; // выставляем свои параметры
 MyOtherDrawer.MenuColor:=clLime; // прорисовки меню
 MyOtherDrawer.GutterColor:=clBlue;
 MyOtherDrawer.Font.Name:='Comic Sans MS';
 MyOtherDrawer.Font.Size:=16;
 MyOtherDrawer.Add(PopupMenu3); // добавляем всЁ popupmenu на перерисовку
 myotherdrawer.MinWidth:=50;
 MyOtherDrawer.Add(Brr); // последний пункт основного меню также
                         // перекрашиваем в свои цвета
 //
 Menu:=MainMenu1; // Присваиваем форме меню
 //
 StartMenu:=TRyMenu.Create(Self); // создаем свой TRyMenu
 with StartMenu do
  begin
   MinHeight:=MenuHeight; // минимальная ширина пункта меню
   MinWidth:=MenuWidth; // минимальная длина пункта меню
   with Font do
    begin
     Charset:=RUSSIAN_CHARSET;
     Size:=11;
     Name:='Times New Roman';
     Style:=[fsBold];
    end;
   Add(PopupMenu4); // отпровляем меню на перекраску
  end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.Panel1Click(Sender: TObject);
 function StartMenuHeight: Integer;
  begin
   Result:=MenuHeight-20;
  end;
var
 P: TPoint;
begin
 P.X:=Panel1.Left;
 P.Y:=Panel1.Top;
 P:=ClientToScreen(P);
 Panel1.BevelOuter:=bvLowered;
 PopupMenu4.Popup(P.X, P.Y-StartMenuHeight);
 Panel1.BevelOuter:=bvRaised;
end;

end.
