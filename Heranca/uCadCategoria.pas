unit uCadCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, utTlaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadCategoria = class(TfrmTelaHeranca)
    qryListagemcategoriaId: TLargeintField;
    qryListagemdescricao: TWideStringField;

    Panel1: TPanel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.dfm}

procedure TfrmCadCategoria.FormCreate(Sender: TObject);
begin
  inherited;
      indiceAtual := 'descricao';
end;

end.
