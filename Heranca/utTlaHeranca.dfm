object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informe o titulo'
  ClientHeight = 515
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 881
    Height = 474
    ActivePage = tabManutencao
    Align = alClient
    TabOrder = 0
    object tabListagem: TTabSheet
      Caption = 'Listagem'
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      object pnlListagemtopo: TPanel
        Left = 0
        Top = 0
        Width = 873
        Height = 65
        Align = alTop
        TabOrder = 0
        object lblIndice: TLabel
          Left = 24
          Top = 4
          Width = 78
          Height = 13
          Caption = 'Campo Pesquisa'
        end
        object mskPesquisar: TMaskEdit
          Left = 24
          Top = 23
          Width = 194
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite  a Pesquisa'
          OnChange = mskPesquisarChange
        end
      end
      object btnPesquisar: TBitBtn
        Left = 224
        Top = 23
        Width = 75
        Height = 21
        Caption = 'Pesquisar'
        TabOrder = 1
        Visible = False
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 88
        Width = 870
        Height = 273
        DataSource = dtsListagem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = grdListagemTitleClick
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 474
    Width = 881
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 0
      Top = 2
      Width = 75
      Height = 24
      Caption = '&NOVO'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 81
      Top = 2
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 162
      Top = 2
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnApagar: TBitBtn
      Left = 324
      Top = 2
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 3
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 796
      Top = 2
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 4
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 477
      Top = 3
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object btnGravar: TBitBtn
      Left = 243
      Top = 2
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 6
      OnClick = btnGravarClick
    end
  end
  object qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 520
    Top = 24
  end
  object dtsListagem: TDataSource
    Left = 624
    Top = 32
  end
end
