object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 281
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnRelCliente: TButton
    Left = 16
    Top = 24
    Width = 153
    Height = 25
    Caption = 'Relat'#243'rio de Cliente Atual'
    TabOrder = 0
    OnClick = btnRelClienteClick
  end
  object btnRelClienteContrato: TButton
    Left = 16
    Top = 72
    Width = 153
    Height = 25
    Caption = 'Relat'#243'rio Cliente x Contrato'
    TabOrder = 1
    OnClick = btnRelClienteContratoClick
  end
end
