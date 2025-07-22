unit uConfiguracoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TfrmConfiguracoes = class(TForm)
    Layout1: TLayout;
    Label7: TLabel;
    imgBack: TImage;
    Rectangle2: TRectangle;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Rectangle1: TRectangle;
    Image3: TImage;
    Label2: TLabel;
    Image4: TImage;
    Rectangle3: TRectangle;
    Image5: TImage;
    Label3: TLabel;
    Image6: TImage;
    Rectangle4: TRectangle;
    Image7: TImage;
    Label4: TLabel;
    Image8: TImage;
    procedure imgBackClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation

{$R *.fmx}

procedure TfrmConfiguracoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmConfiguracoes := nil;
end;

procedure TfrmConfiguracoes.imgBackClick(Sender: TObject);
begin
  close;
end;

end.
