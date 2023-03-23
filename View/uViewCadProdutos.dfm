object ViewCadProdutos: TViewCadProdutos
  Left = 0
  Top = 0
  ClientHeight = 215
  ClientWidth = 572
  Caption = 'ViewCadProdutos'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object tcProdutos: TUniTabControl
    Left = 0
    Top = 0
    Width = 572
    Height = 215
    Hint = ''
    Tabs.Strings = (
      'Produtos')
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 511
    ExplicitHeight = 217
    object lbCodProduto: TUniLabel
      Left = 16
      Top = 32
      Width = 37
      Height = 13
      Hint = ''
      Caption = 'C'#243'digo:'
      TabOrder = 7
    end
    object lbDescricaoProd: TUniLabel
      Left = 16
      Top = 51
      Width = 46
      Height = 13
      Hint = ''
      Caption = 'Descri'#231#227'o'
      TabOrder = 8
    end
    object edDescricaoProd: TUniEdit
      Left = 16
      Top = 70
      Width = 240
      Hint = ''
      MaxLength = 100
      Text = ''
      TabOrder = 1
    end
    object neQuantidade: TUniNumberEdit
      Left = 159
      Top = 121
      Width = 122
      Hint = ''
      Alignment = taRightJustify
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 3
      DecimalSeparator = ','
    end
    object UniNumberEdit2: TUniNumberEdit
      Left = 430
      Top = 121
      Width = 121
      Hint = ''
      Alignment = taRightJustify
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 5
      DecimalSeparator = ','
    end
    object btAdicionar: TUniButton
      Left = 476
      Top = 157
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Salvar'
      TabOrder = 6
    end
    object UniNumberEdit1: TUniNumberEdit
      Left = 295
      Top = 121
      Width = 121
      Hint = ''
      Alignment = taRightJustify
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 4
      DecimalSeparator = ','
    end
    object lbCodBarra: TUniLabel
      Left = 262
      Top = 51
      Width = 52
      Height = 13
      Hint = ''
      Caption = 'C'#243'd. Barra'
      TabOrder = 9
    end
    object UniLabel1: TUniLabel
      Left = 422
      Top = 51
      Width = 29
      Height = 13
      Hint = ''
      Caption = 'Marca'
      TabOrder = 10
    end
    object lbUnidMed: TUniLabel
      Left = 16
      Top = 102
      Width = 76
      Height = 13
      Hint = ''
      Caption = 'Unidade Medida'
      TabOrder = 11
    end
    object lbQuantidade: TUniLabel
      Left = 242
      Top = 102
      Width = 39
      Height = 13
      Hint = ''
      Caption = 'Estoque'
      TabOrder = 12
    end
    object lvValorVenda: TUniLabel
      Left = 359
      Top = 102
      Width = 57
      Height = 13
      Hint = ''
      Caption = 'Valor Venda'
      TabOrder = 13
    end
    object lvValorCusto: TUniLabel
      Left = 496
      Top = 102
      Width = 55
      Height = 13
      Hint = ''
      Caption = 'Valor Custo'
      TabOrder = 14
    end
    object edCodBarra: TUniEdit
      Left = 262
      Top = 70
      Width = 154
      Hint = ''
      MaxLength = 100
      Text = ''
      TabOrder = 2
    end
    object UniComboBox1: TUniComboBox
      Left = 422
      Top = 70
      Width = 129
      Hint = ''
      Text = 'UniComboBox1'
      TabOrder = 15
      IconItems = <>
    end
    object UniComboBox2: TUniComboBox
      Left = 16
      Top = 121
      Width = 129
      Hint = ''
      Text = 'UniComboBox1'
      TabOrder = 16
      IconItems = <>
    end
  end
end
