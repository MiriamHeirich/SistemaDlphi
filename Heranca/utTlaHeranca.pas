unit utTlaHeranca;

interface

uses
  Winapi.Windows, uEnum,  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  ZAbstractRODataset, ZAbstractDataset , uDTMConexao, ZDataset;

type
  TfrmTelaHeranca = class(TForm)
    pgcPrincipal: TPageControl;
    pnlRodape: TPanel;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    pnlListagemtopo: TPanel;
    mskPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    grdListagem: TDBGrid;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnNavigator: TDBNavigator;
    btnGravar: TBitBtn;
    qryListagem: TZQuery;
    dtsListagem: TDataSource;
    lblIndice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure mskPesquisarChange(Sender: TObject);
  private
    { Private declarations }
    EstadoDoCadastro : TEstadoDoCadastro;
    //procedimento de Controle de tela


    procedure controlarBotoes(btnNovo, btnAlterar,btnCancelar, btnGravar,
          btnApagar :TBitBtn; Navegador : TDBNavigator; pgcPrincipal : TPageControl;
          Flag : Boolean );
    procedure controlarIndiceTab(pgcPrincipal: TPageControl; indice: integer);

  
    procedure exibirLabelIndice(Campo: string; aLabel: Tlabel);
    function RetornarCampoTraduzido(Campo: string): string;

  public
    { Public declarations }
    indiceAtual : string;
    function excluir:Boolean; virtual;
    function gravar(estadoDoCadastro: TestadoDoCadastro):Boolean; virtual;
 end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}

procedure TfrmTelaHeranca.btnAlterarClick(Sender: TObject);
begin
  controlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator,
  pgcPrincipal, false );
   EstadoDoCadastro :=ecAlterar;
end;

 function TfrmTelaHeranca.RetornarCampoTraduzido(Campo:string):string;
 var i :integer;
 begin
    for I := 0 to qryListagem.Fields.Count-1 do begin
          if lowercase (qryListagem.Fields[i].fieldName) = lowercase (Campo) then begin
             Result :=qryListagem.Fields[i].DisplayLabel;
              break;
            end;
          end;
   end;

   function TfrmTelaHeranca.excluir: Boolean;
begin
    showMessage ('Deletado');
    result := true;
end;

procedure TfrmTelaHeranca.exibirLabelIndice(Campo:string; aLabel : Tlabel);
   begin
     aLabel.Caption := retornarCampoTraduzido(Campo);
   end;

procedure TfrmTelaHeranca.btnApagarClick(Sender: TObject);
begin
if excluir then begin

  controlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator,
  pgcPrincipal, true );
  controlarIndiceTab (pgcPrincipal, 0);
   EstadoDoCadastro :=ecNenhum;
  end;
end;

procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
begin
  controlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator,
  pgcPrincipal, true );
  controlarIndiceTab (pgcPrincipal, 0);
   EstadoDoCadastro := ecNenhum;


end;

procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
   Close;
end;
procedure TfrmTelaHeranca.btnGravarClick(Sender: TObject);
begin
  Try
    controlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator,
    pgcPrincipal, true );
     controlarIndiceTab (pgcPrincipal, 0);
   if (EstadoDoCadastro = ecInserir) then
       showMessage('Inserir')
   else if  (EstadoDoCadastro = ecAlterar)   then
           showMessage ('Alterado')
   else
             showMessage ('Nada Aconteceu');
  Finally ;
     EstadoDoCadastro :=ecNenhum;
  End;
  end;




procedure TfrmTelaHeranca.btnNovoClick(Sender: TObject);
begin
  controlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator,
  pgcPrincipal, false );
  EstadoDoCadastro :=ecInserir;
end;

procedure TfrmTelaHeranca.controlarBotoes(btnNovo, btnAlterar,btnCancelar, btnGravar,
          btnApagar :TBitBtn; Navegador : TDBNavigator; pgcPrincipal : TPageControl;
          Flag : Boolean );
  begin

  btnNovo.Enabled :=Flag;
  btnAlterar.Enabled :=Flag;
  btnCancelar.Enabled := not (Flag);
  btnGravar.Enabled := not (Flag);
  btnApagar.Enabled :=Flag;
  Navegador.Enabled  :=flag;
  pgcPrincipal.Pages[0].TabVisible := Flag;
  end;

procedure TfrmTelaHeranca.controlarIndiceTab(pgcPrincipal : TPageControl;
          indice : integer);
begin
    if (pgcPrincipal.Pages[indice].TabVisible) then
        pgcprincipal.Tabindex := indice;
end;



procedure TfrmTelaHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryListagem.Close;
end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
begin
  qryListagem.connection := dtmPrincipal.ConexaoDB;
  dtsListagem.DataSet := qryListagem;
  grdListagem.Options :=  [dgTitles,dgIndicator,dgColumnResize,dgColLines,
  dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgCancelOnExit,
  dgTitleClick,dgTitleHotTrack] ;
end;

procedure TfrmTelaHeranca.FormShow(Sender: TObject);
begin
  if (qryListagem.SQL.Text <> '') then  begin
      qryListagem.IndexFieldNames := indiceAtual;
      exibirLabelIndice(indiceAtual, lblindice);
  end;
  controlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator,
    pgcPrincipal, true );

end;



function TfrmTelaHeranca.gravar(estadoDoCadastro: TestadoDoCadastro): Boolean;
begin
  if      (estadoDoCadastro=ecInserir)  then
           showMessage('Inserir')
  else if (estadoDoCadastro=ecAlterar) then
          showMessage('Alterado');
  Result := true;
end;

procedure TfrmTelaHeranca.grdListagemTitleClick(Column: TColumn);
begin
 indiceAtual := Column.FieldName;
 qryListagem.IndexFieldNames := indiceAtual;
exibirLabelIndice(IndiceAtual, lblIndice);
end;

procedure TfrmTelaHeranca.mskPesquisarChange(Sender: TObject);
begin
  qryListagem.locate(indiceAtual, TMaskEdit(Sender).Text,[loPartialKey]);
end;

end.
