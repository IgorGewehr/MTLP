unit uFrmInicial;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, uFancyDialog, System.DateUtils;

type
  TfrmInicial = class(TForm)
    RecFundo: TRectangle;
    Rectangle1: TRectangle;
    Label1: TLabel;
    GridFundo: TGridPanelLayout;
    Rectangle2: TRectangle;
    Label2: TLabel;
    Rectangle3: TRectangle;
    Label3: TLabel;
    Rectangle4: TRectangle;
    Label4: TLabel;
    Rectangle5: TRectangle;
    Label5: TLabel;
    Rectangle6: TRectangle;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Rectangle7: TRectangle;
    Image2: TImage;
    procedure Rectangle1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Rectangle7Click(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    diag : TFancyDialog;
    liberado: Boolean;
    LiberadoData: TDateTime;
  end;

var
  frmInicial: TfrmInicial;

implementation

{$R *.fmx}

uses
uFrmAuthenticator, uFrmLotomania, uFrmPrincipal, uDmPrincipal, uFrmTabela, uFrmVencedores, uFrmJogos;



procedure TfrmInicial.FormShow(Sender: TObject);
var
contagem : integer;
begin
  diag := TFancyDialog.Create(FrmInicial);
  dmPrincipal.Liberation;


  contagem := DaysBetween(DmPrincipal.dataLiberation,today);
  if frmAuthent.acessoIgor then
    contagem := 7;

  if contagem >= 7 then
  begin
    Rectangle6.Visible := False;
    Label6.Visible := False;

    Rectangle7.Visible := False;
    Label7.Visible := False;
    Liberado := True;
  end
  else
  begin
    Label6.Text := 'B�NUS #1: LIBERA EM ' + IntToStr(7 - contagem) + ' DIAS';
    Label7.Text := 'B�NUS #2: LIBERA EM ' + IntToStr(7 - contagem) + ' DIAS';

    Rectangle6.Visible := True;
    Label6.Visible := True;

    Rectangle7.Visible := True;
    Label7.Visible := True;

    Liberado := False;
  end;
end;

procedure TfrmInicial.Label3Click(Sender: TObject);
begin
  Application.CreateForm(TFrmVencedores, FrmVencedores);
  FrmVencedores.Show;
end;

procedure TfrmInicial.Label5Click(Sender: TObject);
begin
  Application.CreateForm(TFrmJogos, frmJogos);
  frmJogos.Show;
end;

procedure TfrmInicial.Rectangle1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  FrmPrincipal.Show;

  FrmPrincipal.geraNumeros(FrmPrincipal);
end;

procedure TfrmInicial.Rectangle2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmLotomania, FrmLotomania);
  FrmLotomania.Show;

  FrmLotomania.geraLotomaniaUm(FrmLotomania);
  FrmLotomania.geraLotomaniaDois(FrmLotomania);
  FrmLotomania.geraLotomaniaTres(FrmLotomania);

end;

procedure TfrmInicial.Rectangle4Click(Sender: TObject);
begin
  Application.CreateForm(TFrmTabela, FrmTabela);
  FrmTabela.Show;
end;

procedure TfrmInicial.Rectangle6Click(Sender: TObject);
begin
  diag.Show(TIconDialog.Error,'Ops','Voc� ainda n�o tem acesso � esse b�nus');
end;

procedure TfrmInicial.Rectangle7Click(Sender: TObject);
begin
  diag.Show(TIconDialog.Error,'Ops','Voc� ainda n�o tem acesso � esse b�nus');
end;

end.
