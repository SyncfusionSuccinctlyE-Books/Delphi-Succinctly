unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, System.ImageList, Vcl.ImgList,
  Vcl.ExtActns, Vcl.StdActns;

type
  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    FileExitMenuItem: TMenuItem;
    N2: TMenuItem;
    About1: TMenuItem;
    MainToolBar: TToolBar;
    FileExitToolButton: TToolButton;
    MainActionList: TActionList;
    FileExitAction: TAction;
    RichEdit: TRichEdit;
    MainImageList: TImageList;
    FileOpen: TFileOpen;
    FileSaveAs: TFileSaveAs;
    FormatRichEditBold: TRichEditBold;
    FormatRichEditItalic: TRichEditItalic;
    FormatRichEditUnderline: TRichEditUnderline;
    FormatRichEditStrikeOut: TRichEditStrikeOut;
    FormatRichEditBullets: TRichEditBullets;
    FormatRichEditAlignLeft: TRichEditAlignLeft;
    FormatRichEditAlignRight: TRichEditAlignRight;
    FormatRichEditAlignCenter: TRichEditAlignCenter;
    SaveAs1: TMenuItem;
    Format1: TMenuItem;
    AlignLeft1: TMenuItem;
    Center2: TMenuItem;
    AlignRight1: TMenuItem;
    Italic1: TMenuItem;
    Underline1: TMenuItem;
    Strikeout1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Bullets1: TMenuItem;
    Bold1: TMenuItem;
    procedure FileExitActionExecute(Sender: TObject);
    procedure FileSaveAsAccept(Sender: TObject);
    procedure FileOpenAccept(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FileExitActionExecute(Sender: TObject);
begin
  // Closes the main form and ends the application.
  Self.Close;
end;

procedure TMainForm.FileOpenAccept(Sender: TObject);
begin
  RichEdit.Lines.LoadFromFile(FileOpen.Dialog.FileName);
end;

procedure TMainForm.FileSaveAsAccept(Sender: TObject);
begin
  RichEdit.Lines.SaveToFile(FilleSaveAs.Dialog.FileName);
end;

end.
