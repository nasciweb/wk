unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, WideStrings, DBXMySql, DB, SqlExpr,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, FMTBcd, Provider,
  DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset, Mask, DBCtrls;

type
  TfrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    dsPedidos: TDataSource;
    Panel5: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ZConnection1: TZConnection;
    qPedidos: TZQuery;
    qPedidosnumero_pedido: TIntegerField;
    qPedidoscod_cliente: TIntegerField;
    qPedidoscod_produto: TIntegerField;
    qPedidosvalor_unitario: TFloatField;
    qPedidosquantidade: TIntegerField;
    qPedidosvalor_total: TFloatField;
    Label1: TLabel;
    dbeNumPedido: TDBEdit;
    Label2: TLabel;
    dbeCodCliente: TDBEdit;
    Label3: TLabel;
    dbeCodProduto: TDBEdit;
    Label4: TLabel;
    dbeValorUnitario: TDBEdit;
    Label5: TLabel;
    dbeQuantidade: TDBEdit;
    Label6: TLabel;
    dbeValorTotal: TDBEdit;
    qrComando: TZQuery;
    qrCliente: TZQuery;
    dsCliente: TDataSource;
    dsProdutos: TDataSource;
    qrProdutos: TZQuery;
    qrProdutoscodigo: TIntegerField;
    qrProdutosdescricao: TWideStringField;
    qrProdutospreco_venda: TFloatField;
    qrClientecodigo: TIntegerField;
    qrClientenome: TWideStringField;
    qrClientecidade: TWideStringField;
    qrClienteuf: TWideStringField;
    dsPedidosGeral: TDataSource;
    qrPedidosGeral: TZQuery;
    dsPedidosProdutos: TDataSource;
    qrPedidosProdutos: TZQuery;
    qrPedidosProdutosnumero_pedido: TIntegerField;
    qrPedidosProdutoscod_cliente: TIntegerField;
    qrPedidosProdutoscod_produto: TIntegerField;
    qrPedidosProdutosvalor_unitario: TFloatField;
    qrPedidosProdutosquantidade: TIntegerField;
    qrPedidosProdutosvalor_total: TFloatField;
    qrPedidosGeralnumero_pedido: TIntegerField;
    qrPedidosGeraldata_emissao: TWideStringField;
    qrPedidosGeralcodigo_cliente: TIntegerField;
    qrPedidosGeralvalor_total: TFloatField;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure dbeValorTotalExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbeCodClienteExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure dbeQuantidadeExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  qrPedidosGeral.Open;
  qrProdutos.Open;
  qrPedidosProdutos.Open;
  qrCliente.Open;

  qrPedidosGeral.Active;
  qrProdutos.Active;
  qrPedidosProdutos.Active;
  qrCliente.Active;

  dsPedidosGeral.Edit;
  dsProdutos.Edit;
  dsPedidosProdutos.Edit;
  dsCliente.Edit;

  qrPedidosGeral.Edit;
  qrPedidosProdutos.Edit;

end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
var
  NumPedido: Integer;
begin
  dbeNumPedido.SetFocus;
  NumPedido := qrPedidosGeralnumero_pedido.MaxValue;
  qrPedidosGeralnumero_pedido.Value := (StrToInt(dbeNumPedido.Text)+NumPedido);
  qrPedidosGeraldata_emissao.Value := DateToStr(now());
  qrPedidosGeralcodigo_cliente.Value := StrToInt(dbeCodCliente.Text);
  qrPedidosGeralvalor_total.Value := StrToFloat(dbeValorTotal.Text);
  qrPedidosGeral.Post;
  qrPedidosProdutosnumero_pedido.Value := StrToInt(dbeNumPedido.Text);
  qrPedidosProdutoscod_cliente.Value   := StrToInt(dbeCodCliente.Text);
  qrPedidosProdutoscod_produto.Value   := StrToInt(dbeCodProduto.Text);
  qrPedidosProdutosvalor_unitario.Value := StrToFloat(dbeValorUnitario.Text);
  qrPedidosProdutosquantidade.Value    := StrToInt(dbeQuantidade.Text);
  qrPedidosProdutosvalor_total.Value := StrToFloat(dbeValorTotal.Text);
  qrPedidosProdutos.Post;
end;

procedure TfrmPrincipal.BitBtn4Click(Sender: TObject);
begin
  qrPedidosProdutos.Prior;
end;

procedure TfrmPrincipal.BitBtn5Click(Sender: TObject);
begin
  qrPedidosProdutos.Next;
end;

procedure TfrmPrincipal.dbeCodClienteExit(Sender: TObject);
begin
  with qrCliente do
  begin
  SQL.Clear;
  SQL.Add('select * from cliente where codigo = :codigo');
  ParamByName('codigo').AsInteger := StrToint(dbeCodCliente.Text);
  end;
end;

procedure TfrmPrincipal.dbeQuantidadeExit(Sender: TObject);
var
  VlrUnitario: double;
  Quantidade: Integer;
begin
  VlrUnitario := StrToCurr(dbeValorUnitario.Text);
  Quantidade :=  StrToInt(dbeQuantidade.Text);
  dbeValorTotal.Text := FloatToStr(VlrUnitario * Quantidade);
end;

procedure TfrmPrincipal.dbeValorTotalExit(Sender: TObject);
begin
  if Application.MessageBox('Deseja inserir novos produtos para esse pedido?','Confirmação',
    MB_YESNO or MB_ICONQUESTION + MB_DEFBUTTON2) = mrYes then
  begin
    //
    qrPedidosProdutos.Append;
    //qrComando.SQL.Add()

  end
  else
    BitBtn3.Click;

end;

end.
