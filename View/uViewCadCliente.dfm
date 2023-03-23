object ViewCadClientes: TViewCadClientes
  Left = 0
  Top = 0
  ClientHeight = 365
  ClientWidth = 640
  Caption = 'ViewCadClientes'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object tcClientes: TUniTabControl
    Left = 0
    Top = 0
    Width = 640
    Height = 365
    Hint = ''
    Tabs.Strings = (
      'Clientes')
    Align = alClient
    TabOrder = 0
    object edNome: TUniEdit
      Tag = 1
      Left = 96
      Top = 59
      Width = 361
      Hint = ''
      MaxLength = 100
      Text = ''
      TabOrder = 2
    end
    object edCpf: TUniEdit
      Tag = 1
      Left = 472
      Top = 59
      Width = 121
      Hint = ''
      MaxLength = 14
      Text = ''
      TabOrder = 3
      InputMask.Mask = '999.999.999-99'
      InputMask.RemoveMaskChar = False
    end
    object edCep: TUniEdit
      Left = 8
      Top = 116
      Width = 146
      Hint = ''
      MaxLength = 9
      Text = ''
      TabOrder = 4
      InputMask.Mask = '99999-999'
    end
    object edEndereco: TUniEdit
      Left = 160
      Top = 116
      Width = 433
      Hint = ''
      MaxLength = 100
      Text = ''
      TabOrder = 5
    end
    object edTelefone: TUniEdit
      Tag = 1
      Left = 8
      Top = 176
      Width = 137
      Hint = ''
      MaxLength = 15
      Text = ''
      TabOrder = 6
      InputMask.Mask = #10'(99)99999-9999'
    end
    object edDtnascimento: TUniEdit
      Left = 160
      Top = 176
      Width = 121
      Hint = ''
      MaxLength = 10
      Text = ''
      TabOrder = 7
      InputMask.Mask = '99/99/9999'
    end
    object lbCodigo: TUniLabel
      Left = 8
      Top = 40
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'C'#243'digo'
      TabOrder = 8
    end
    object lbNome: TUniLabel
      Tag = 1
      Left = 96
      Top = 40
      Width = 27
      Height = 13
      Hint = ''
      Caption = 'Nome'
      TabOrder = 9
    end
    object lbCpf: TUniLabel
      Tag = 1
      Left = 472
      Top = 40
      Width = 19
      Height = 13
      Hint = ''
      Caption = 'CPF'
      TabOrder = 10
    end
    object lbCep: TUniLabel
      Left = 8
      Top = 97
      Width = 19
      Height = 13
      Hint = ''
      Caption = 'CEP'
      TabOrder = 11
    end
    object lbEndereco: TUniLabel
      Left = 160
      Top = 97
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Endere'#231'o'
      TabOrder = 12
    end
    object lbTelefone: TUniLabel
      Tag = 1
      Left = 8
      Top = 157
      Width = 42
      Height = 13
      Hint = ''
      Caption = 'Telefone'
      TabOrder = 13
    end
    object lbDtnascimento: TUniLabel
      Left = 160
      Top = 157
      Width = 96
      Height = 13
      Hint = ''
      Caption = 'Data de Nascimento'
      TabOrder = 14
    end
    object UniLabel8: TUniLabel
      Left = 24
      Top = 301
      Width = 89
      Height = 13
      Hint = ''
      Caption = 'Data de Cadastro:'
      TabOrder = 15
    end
    object btSalvarCliente: TUniButton
      Left = 534
      Top = 289
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Salvar'
      TabOrder = 16
      OnClick = btSalvarClienteClick
    end
    object edCodigo: TUniEdit
      Left = 8
      Top = 59
      Width = 82
      Hint = ''
      Enabled = False
      Text = ''
      TabOrder = 1
    end
  end
end
