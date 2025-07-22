unit uLancamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfrmLancamento = class(TForm)
    Layout1: TLayout;
    imgBack: TImage;
    Label7: TLabel;
    Rectangle2: TRectangle;
    rctMeses: TRectangle;
    Label8: TLabel;
    Image2: TImage;
    Image3: TImage;
    rctAbas: TRectangle;
    Layout2: TLayout;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lvLancamentos: TListView;
    procedure FormShow(Sender: TObject);
    procedure imgBackClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AddLancamentoLv(id_lancamento: integer; descricao, categoria,
      dt: String; valor: Double);
    procedure ListarLancamentos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamento: TfrmLancamento;

implementation

{$R *.fmx}

procedure TfrmLancamento.AddLancamentoLv(id_lancamento: integer;
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

procedure TfrmLancamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmLancamento := nil;
end;

procedure TfrmLancamento.FormShow(Sender: TObject);
begin
  ListarLancamentos;
end;

procedure TfrmLancamento.imgBackClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLancamento.ListarLancamentos;
begin
  AddLancamentoLv(1, 'Compra de Carregadores', 'Estoque', '17/07', 95);
  AddLancamentoLv(1, 'Compra de Peliculas', 'Estoque', '17/07', 200);
  AddLancamentoLv(1, 'Compra de Fones de Ouvido', 'Estoque', '17/07', 105);
  AddLancamentoLv(1, 'Compra de Cases Emborrachadas', 'Estoque', '17/07', 65);
  AddLancamentoLv(1, 'Compra de Cabos de Dados', 'Estoque', '17/07', 70);
end;

end.
