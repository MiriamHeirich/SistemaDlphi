inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientWidth = 939
  ExplicitWidth = 945
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 939
    ActivePage = tabListagem
    ExplicitWidth = 939
    inherited tabListagem: TTabSheet
      ExplicitWidth = 931
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 931
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 9
          Width = 78
          Height = 73
          Caption = 'Campo Pesquisa'
        end
        object MaskEdit1: TMaskEdit
          Left = 24
          Top = 23
          Width = 194
          Height = 21
          TabOrder = 0
          Text = ''
          TextHint = 'Digite  a Pesquisa'
        end
        object BitBtn1: TBitBtn
          Left = 224
          Top = 23
          Width = 75
          Height = 21
          Caption = 'Pesquisar'
          TabOrder = 1
        end
      end
      object DBGrid1: TDBGrid
        Left = 24
        Top = 88
        Width = 793
        Height = 297
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 931
      inherited pnlListagemtopo: TPanel
        Width = 931
        ExplicitWidth = 931
        object Label2: TLabel [1]
          Left = 8
          Top = 24
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
      end
      inherited btnPesquisar: TBitBtn
        Top = 21
        ExplicitTop = 21
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 939
    ExplicitWidth = 939
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qryListagem: TZQuery
    Active = True
    SQL.Strings = (
      'SELECT  categoriaId, descricao FROM categoria')
    Left = 472
    Top = 32
    object qryListagemcategoriaId: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaId'
      Required = True
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
