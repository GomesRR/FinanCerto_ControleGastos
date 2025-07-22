unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
  TfrmPrincipal = class(TForm)
    lytToolbarHome: TLayout;
    imgToolbarHome: TImage;
    lyt1: TLayout;
    lytSaldo: TLayout;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lytTotalReceitas: TLayout;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    lytTotalDespesas: TLayout;
    Image3: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label7: TLabel;
    Label8: TLabel;
    rectBottomAbas: TRectangle;
    Layout2: TLayout;
    rctAbas: TRectangle;
    Image4: TImage;
    lvLancamentos: TListView;
    imgHome: TImage;
    imgLancamentos: TImage;
    imgConfiguracoes: TImage;
    Layout1: TLayout;
    procedure FormShow(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure imgConfiguracoesClick(Sender: TObject);
  private
    { Private declarations }
    procedure AddLancamentoLv(id_lancamento: integer;
                              descricao, categoria, dt: String;
                              valor: Double);
    procedure ListarUltimosLancamentos;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses uLancamento, uConfiguracoes;

procedure TfrmPrincipal.AddLancamentoLv(id_lancamento: integer;
                                        descricao, categoria, dt: String;
                                        valor: Double);
var
  item: TListViewItem;
begin
  item := lvLancamentos.Items.Add;
  item.Height := 52;
  item.Tag := id_lancamento;

  TListItemText(item.Objects.FindDrawable('txtDescricao')).Text := descricao;
  TListItemText(item.Objects.FindDrawable('txtCategoria')).Text := categoria;
  TListItemText(item.Objects.FindDrawable('txtValor')).Text := FormatFloat('R$#,##0.00', valor);
  TListItemText(item.Objects.FindDrawable('txtData')).Text := dt;
end;

procedure TfrmPrincipal.Label8Click(Sender: TObject);
begin
  if not Assigned(frmLancamento) then
  begin
    Application.CreateForm(TFrmLancamento, frmLancamento);
  end;

  frmLancamento.Show;
end;

procedure TFrmPrincipal.ListarUltimosLancamentos;
begin
  AddLancamentoLv(1, 'Compra de Carregadores', 'Estoque', '17/07', 95);
  AddLancamentoLv(1, 'Compra de Peliculas', 'Estoque', '17/07', 200);
  AddLancamentoLv(1, 'Compra de Fones de Ouvido', 'Estoque', '17/07', 105);
  AddLancamentoLv(1, 'Compra de Cases Emborrachadas', 'Estoque', '17/07', 65);
  AddLancamentoLv(1, 'Compra de Cabos de Dados', 'Estoque', '17/07', 70);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  ListarUltimosLancamentos;
end;


procedure TfrmPrincipal.imgConfiguracoesClick(Sender: TObject);
begin
 if not Assigned(frmConfiguracoes) then
 begin
   Application.CreateForm(TFrmConfiguracoes, frmConfiguracoes);
 end;

 frmConfiguracoes.Show;
end;

end.
