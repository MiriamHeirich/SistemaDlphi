object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 490
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mainPrincipal: TMainMenu
    Left = 24
    Top = 440
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
      end
      object Cliente2: TMenuItem
        Caption = '-'
      end
      object Categoria1: TMenuItem
        Caption = 'Categoria'
        OnClick = Categoria1Click
      end
      object Categoria2: TMenuItem
        Caption = 'Produto'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuFechar: TMenuItem
        Caption = 'Fechar'
        OnClick = mnuFecharClick
      end
    end
    object CADASTRO2: TMenuItem
      Caption = 'MOVIMENTA'#199#195'O'
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object RELATRIO1: TMenuItem
      Caption = 'RELAT'#211'RIO'
      object Cliente3: TMenuItem
        Caption = 'Cliente'
      end
      object Cliente4: TMenuItem
        Caption = '-'
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
      end
      object Produto2: TMenuItem
        Caption = '-'
      end
      object VendaporData1: TMenuItem
        Caption = 'Venda por Data'
      end
    end
  end
end
