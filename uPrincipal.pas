unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uDTMConexao,Enter, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    CADASTRO2: TMenuItem;
    RELATRIO1: TMenuItem;
    Cliente1: TMenuItem;
    Cliente2: TMenuItem;
    Categoria1: TMenuItem;
    Categoria2: TMenuItem;
    N1: TMenuItem;
    mnuFechar: TMenuItem;
    Vendas1: TMenuItem;
    Cliente3: TMenuItem;
    Cliente4: TMenuItem;
    Produto1: TMenuItem;
    Produto2: TMenuItem;
    VendaporData1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    teclaEnter : TMREnter;

  public
    { Public declarations }


  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
  frmCadCategoria := TfrmCadCategoria.Create(Self);
  frmCadCategoria.showmodal;
  frmCadCategoria.Release;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(teclaEnter) ;
  FreeAndNil(dtmPrincipal);

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 dtmPrincipal := TdtmPrincipal.Create(Self);
 dtmPrincipal.ConexaoDB.SQLhourGlass := true;
 dtmPrincipal.ConexaoDB.Connected :=true;
 teclaEnter := TMREnter.Create(Self);
 teclaEnter.FocusEnabled := true;
 teclaEnter.Focuscolor := clinfoBK;
end;




procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  Close;
end;

end.
