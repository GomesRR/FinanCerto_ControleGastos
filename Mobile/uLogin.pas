unit uLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl, FMX.Edit;

type
  TfrmLogin = class(TForm)
    TabControl: TTabControl;
    tabBoasVindas: TTabItem;
    tabLogin: TTabItem;
    tabNovaConta: TTabItem;
    layoutBoasVindas: TLayout;
    imgLogoBoasVindas: TImage;
    lblBoasVindas: TLabel;
    rectBtnAcessarConta: TRectangle;
    btnAcessarConta: TSpeedButton;
    rectBtnCriarConta: TRectangle;
    btnCriarMinhaConta: TSpeedButton;
    LayoutLogin: TLayout;
    imgLogoLogin: TImage;
    lblLogin: TLabel;
    rctBtnAcessar: TRectangle;
    btnAcessar: TSpeedButton;
    edtEmailLogin: TEdit;
    edtSenhaLogin: TEdit;
    lblCriarContaAgora: TLabel;
    Layout1: TLayout;
    imgLogoNovaConta: TImage;
    lblNovaConta: TLabel;
    rctBtnCriarConta: TRectangle;
    btnCriarConta: TSpeedButton;
    edtNomeCompleto: TEdit;
    edtConfirmaSenha: TEdit;
    lblFazerLogin: TLabel;
    edtSenha: TEdit;
    edtEmail: TEdit;
    procedure btnAcessarContaClick(Sender: TObject);
    procedure btnCriarMinhaContaClick(Sender: TObject);
    procedure lblCriarContaAgoraClick(Sender: TObject);
    procedure lblFazerLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

procedure TfrmLogin.btnAcessarContaClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(1);
end;

procedure TfrmLogin.btnCriarMinhaContaClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(2);
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  TabControl.ActiveTab := tabBoasVindas;
end;

procedure TfrmLogin.lblCriarContaAgoraClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(2);
end;

procedure TfrmLogin.lblFazerLoginClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(1);
end;

end.
