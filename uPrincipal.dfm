object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'WK'
  ClientHeight = 384
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 365
    Width = 603
    Height = 19
    Panels = <>
    ExplicitWidth = 580
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 580
    object BitBtn1: TBitBtn
      Left = 1
      Top = 1
      Width = 52
      Height = 39
      Align = alLeft
      Caption = 'Incluir'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 324
    Width = 603
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 580
    object BitBtn2: TBitBtn
      Left = 1
      Top = 1
      Width = 601
      Height = 39
      Align = alClient
      Caption = '&Gravar Pedido'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkYes
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      ExplicitWidth = 578
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 297
    Height = 283
    Align = alLeft
    TabOrder = 3
    object Label1: TLabel
      Left = 4
      Top = 13
      Width = 74
      Height = 13
      Caption = 'numero_pedido'
      FocusControl = dbeNumPedido
    end
    object Label2: TLabel
      Left = 4
      Top = 64
      Width = 54
      Height = 13
      Caption = 'cod_cliente'
      FocusControl = dbeCodCliente
    end
    object Label3: TLabel
      Left = 4
      Top = 115
      Width = 61
      Height = 13
      Caption = 'cod_produto'
      FocusControl = dbeCodProduto
    end
    object Label4: TLabel
      Left = 157
      Top = 115
      Width = 66
      Height = 13
      Caption = 'valor_unitario'
      FocusControl = dbeValorUnitario
    end
    object Label5: TLabel
      Left = 4
      Top = 164
      Width = 54
      Height = 13
      Caption = 'quantidade'
      FocusControl = dbeQuantidade
    end
    object Label6: TLabel
      Left = 157
      Top = 164
      Width = 52
      Height = 13
      Caption = 'valor_total'
      FocusControl = dbeValorTotal
    end
    object DBText2: TDBText
      Left = 69
      Top = 83
      Width = 65
      Height = 17
      DataField = 'nome'
      DataSource = dsCliente
    end
    object BitBtn3: TBitBtn
      Left = 192
      Top = 213
      Width = 99
      Height = 57
      Caption = 'Inserir Produtos no Grid'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      WordWrap = True
    end
    object dbeNumPedido: TDBEdit
      Left = 4
      Top = 29
      Width = 134
      Height = 21
      DataField = 'numero_pedido'
      DataSource = dsPedidos
      TabOrder = 1
    end
    object dbeCodCliente: TDBEdit
      Left = 4
      Top = 80
      Width = 61
      Height = 21
      DataField = 'cod_cliente'
      DataSource = dsPedidos
      TabOrder = 2
      OnExit = dbeCodClienteExit
    end
    object dbeCodProduto: TDBEdit
      Left = 4
      Top = 131
      Width = 134
      Height = 21
      DataField = 'cod_produto'
      DataSource = dsPedidos
      TabOrder = 3
    end
    object dbeValorUnitario: TDBEdit
      Left = 157
      Top = 131
      Width = 134
      Height = 21
      DataField = 'valor_unitario'
      DataSource = dsPedidos
      TabOrder = 4
    end
    object dbeQuantidade: TDBEdit
      Left = 4
      Top = 180
      Width = 134
      Height = 21
      DataField = 'quantidade'
      DataSource = dsPedidos
      TabOrder = 5
      OnExit = dbeQuantidadeExit
    end
    object dbeValorTotal: TDBEdit
      Left = 157
      Top = 180
      Width = 134
      Height = 21
      DataField = 'valor_total'
      DataSource = dsPedidos
      TabOrder = 6
      OnExit = dbeValorTotalExit
    end
  end
  object Panel4: TPanel
    Left = 297
    Top = 41
    Width = 272
    Height = 283
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 249
    ExplicitHeight = 240
    object Label7: TLabel
      Left = 128
      Top = 254
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object DBText1: TDBText
      Left = 192
      Top = 254
      Width = 65
      Height = 17
      Alignment = taRightJustify
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 270
      Height = 240
      Align = alTop
      DataSource = dsPedidos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel5: TPanel
    Left = 569
    Top = 41
    Width = 34
    Height = 283
    Align = alRight
    TabOrder = 5
    ExplicitLeft = 546
    object BitBtn4: TBitBtn
      Left = 1
      Top = 1
      Width = 32
      Height = 45
      Align = alTop
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 1
      Top = 46
      Width = 32
      Height = 45
      Align = alTop
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn5Click
    end
  end
  object dsPedidos: TDataSource
    DataSet = qPedidos
    Left = 408
    Top = 96
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    UTF8StringsAsWideField = True
    Catalog = 'wk'
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'wk'
    User = 'root'
    Password = '123456'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Teste\wk\libmysql.dll'
    Left = 128
    Top = 8
  end
  object qPedidos: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from pedidos_produtos')
    Params = <>
    Left = 440
    Top = 96
    object qPedidosnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
      Required = True
    end
    object qPedidoscod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qPedidoscod_produto: TIntegerField
      FieldName = 'cod_produto'
    end
    object qPedidosvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
    end
    object qPedidosquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object qPedidosvalor_total: TFloatField
      FieldName = 'valor_total'
    end
  end
  object qrComando: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 40
    Top = 264
  end
  object qrCliente: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 352
    Top = 96
    object qrClientecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qrClientenome: TWideStringField
      FieldName = 'nome'
      Size = 250
    end
    object qrClientecidade: TWideStringField
      FieldName = 'cidade'
      Size = 250
    end
    object qrClienteuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
  end
  object dsCliente: TDataSource
    DataSet = qrCliente
    Left = 320
    Top = 96
  end
  object dsProdutos: TDataSource
    DataSet = qrProdutos
    Left = 320
    Top = 160
  end
  object qrProdutos: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from produtos')
    Params = <>
    Left = 352
    Top = 160
    object qrProdutoscodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object qrProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 250
    end
    object qrProdutospreco_venda: TFloatField
      FieldName = 'preco_venda'
    end
  end
  object dsPedidosGeral: TDataSource
    Left = 104
    Top = 256
  end
  object qrPedidosGeral: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from pedidos_dados_gerais')
    Params = <>
    Left = 136
    Top = 256
    object qrPedidosGeralnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
      Required = True
    end
    object qrPedidosGeraldata_emissao: TWideStringField
      FieldName = 'data_emissao'
      Size = 250
    end
    object qrPedidosGeralcodigo_cliente: TIntegerField
      FieldName = 'codigo_cliente'
      Required = True
    end
    object qrPedidosGeralvalor_total: TFloatField
      FieldName = 'valor_total'
    end
  end
  object dsPedidosProdutos: TDataSource
    Left = 136
    Top = 160
  end
  object qrPedidosProdutos: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from pedidos_produtos')
    Params = <>
    Left = 168
    Top = 160
    object qrPedidosProdutosnumero_pedido: TIntegerField
      FieldName = 'numero_pedido'
      Required = True
    end
    object qrPedidosProdutoscod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
    object qrPedidosProdutoscod_produto: TIntegerField
      FieldName = 'cod_produto'
    end
    object qrPedidosProdutosvalor_unitario: TFloatField
      FieldName = 'valor_unitario'
    end
    object qrPedidosProdutosquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object qrPedidosProdutosvalor_total: TFloatField
      FieldName = 'valor_total'
    end
  end
end
