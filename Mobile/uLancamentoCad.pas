unit uLancamentoCad;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit,
  FMX.DateTimeCtrls, FMX.ListBox;

type
  TfrmLancamentoCad = class(TForm)
    Layout1: TLayout;
    Label7: TLabel;
    imgBack: TImage;
    Image1: TImage;
    Layout2: TLayout;
    Edit1: TEdit;
    Layout3: TLayout;
    Edit2: TEdit;
    RectTipoLancamento: TRectangle;
    lblDespesaCadLancamento: TLabel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DateEdit1: TDateEdit;
    Image2: TImage;
    Layout4: TLayout;
    procedure imgBackClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamentoCad: TfrmLancamentoCad;

implementation

{$R *.fmx}

procedure TfrmLancamentoCad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmLancamentoCad := nil;
end;

procedure TfrmLancamentoCad.imgBackClick(Sender: TObject);
begin
  Close;
end;

end.
