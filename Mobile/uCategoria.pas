unit uCategoria;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Layouts;

type
  TfrmCategoria = class(TForm)
    Layout1: TLayout;
    Label7: TLabel;
    imgBack: TImage;
    Image1: TImage;
    lvCategoria: TListView;
    procedure FormShow(Sender: TObject);
    procedure imgBackClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AddCategoriaLv(id_categoria: integer; descricao: String);
    procedure ListarCategorias;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoria: TfrmCategoria;

implementation

{$R *.fmx}

procedure TfrmCategoria.AddCategoriaLv(id_categoria: integer;
                                       descricao: String);
var
  item: TListViewItem;
begin
  item := lvCategoria.Items.Add;
  item.Height := 52;
  item.Tag := id_categoria;
  item.Text := descricao;
end;

procedure TfrmCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  frmCategoria := nil;
end;

procedure TfrmCategoria.FormShow(Sender: TObject);
begin
  ListarCategorias;
end;

procedure TfrmCategoria.imgBackClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCategoria.ListarCategorias;
begin
  AddCategoriaLv(1,'Transporte');
  AddCategoriaLv(1,'Lazer');
  AddCategoriaLv(1,'Viagem');
  AddCategoriaLv(1,'Mercado');
  AddCategoriaLv(1,'Casa');
end;

end.
