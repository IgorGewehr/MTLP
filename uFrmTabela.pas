unit uFrmTabela;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, uFancyDialog,
  FMX.Edit;

type
  TFrmTabela = class(TForm)
    LytFundo: TLayout;
    LytTitulo: TLayout;
    LblTitulo: TLabel;
    Image1: TImage;
    RecMenuFundo: TRectangle;
    Layout51: TLayout;
    Label12: TLabel;
    Image2: TImage;
    Layout52: TLayout;
    Layout53: TLayout;
    Image3: TImage;
    Label13: TLabel;
    Layout54: TLayout;
    Image4: TImage;
    Label14: TLabel;
    Layout55: TLayout;
    Image5: TImage;
    Label15: TLabel;
    Layout56: TLayout;
    Image6: TImage;
    Label16: TLabel;
    Layout57: TLayout;
    Image7: TImage;
    Label17: TLabel;
    WidthAnimation: TFloatAnimation;
    WidthAnimation2: TFloatAnimation;
    Layout58: TLayout;
    Image8: TImage;
    LBLINICIO: TLabel;
    LytBottom: TLayout;
    RecBottom: TRectangle;
    LblLucro: TLabel;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Label2: TLabel;
    Line1: TLine;
    Circle1: TCircle;
    Layout2: TLayout;
    Rectangle2: TRectangle;
    Label4: TLabel;
    Line2: TLine;
    Circle2: TCircle;
    Layout4: TLayout;
    Rectangle4: TRectangle;
    Label8: TLabel;
    Line4: TLine;
    Circle4: TCircle;
    VertScrollBox1: TVertScrollBox;
    EdtFeitos: TEdit;
    EdtGanhos: TEdit;
    EdtGasto: TEdit;
    Layout3: TLayout;
    Rectangle3: TRectangle;
    Label6: TLabel;
    Line3: TLine;
    Circle3: TCircle;
    EdtRetornado: TEdit;
    Layout5: TLayout;
    Rectangle5: TRectangle;
    Label1: TLabel;
    procedure Label13Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure WidthAnimationFinish(Sender: TObject);
    procedure LBLINICIOClick(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtFeitosExit(Sender: TObject);
    procedure EdtFeitosEnter(Sender: TObject);
    procedure EdtGanhosEnter(Sender: TObject);
    procedure EdtGastoEnter(Sender: TObject);
    procedure EdtRetornadoEnter(Sender: TObject);
    procedure EdtGanhosExit(Sender: TObject);
    procedure EdtGastoExit(Sender: TObject);
    procedure EdtRetornadoExit(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hasData: Boolean;
    diag : TFancyDialog;
    EdtGanhosVar : Integer;
    EdtFeitosVar : Integer;
    EdtGastoVar : Double;
    EdtRetornadoVar : Double;
  end;

var
  FrmTabela: TFrmTabela;

implementation

{$R *.fmx}

uses
Loading, math, uDmPrincipal, uFrmVencedores,uFrmLotomania, uFrmPrincipal, uFrmInicial, uFrmJogos;

procedure TFrmTabela.EdtFeitosEnter(Sender: TObject);
begin
  if not (hasData) AND not(EdtFeitosVar > 0) then
  begin
    EdtFeitos.Text := '';
  end
  else
  begin
    EdtFeitos.Text := IntToStr(EdtFeitosVar);
  end;
end;

procedure TFrmTabela.EdtFeitosExit(Sender: TObject);
begin
  if EdtFeitos.Text <> '' then
  begin
    EdtFeitosVar := StrToInt(EdtFeitos.Text);
  end
  else
  begin
    EdtFeitos.Text := '0';
  end;

end;

procedure TFrmTabela.EdtGanhosEnter(Sender: TObject);
begin
  if not (hasData) AND not(EdtGanhosVar > 0) then
  begin
    EdtGanhos.Text := '';
  end
  else
  begin
    EdtGanhos.Text := IntToStr(EdtGanhosVar);
  end;
end;

procedure TFrmTabela.EdtGanhosExit(Sender: TObject);
begin
  if EdtGanhos.Text <> '' then
  begin
    EdtGanhosVar := StrToInt(EdtGanhos.text);
  end
  else
  begin
    EdtGanhos.Text := '0';
  end;
end;

procedure TFrmTabela.EdtGastoEnter(Sender: TObject);
begin
  if hasData then
  begin
    EdtGasto.Text := FloatToStr(EdtGastoVar);
  end;

  if not(EdtGastoVar > 0) then
  begin
    EdtGasto.Text := '';
  end
  else
  begin
    EdtGasto.Text := FloatToStr(EdtGastoVar);
  end;
end;

procedure TFrmTabela.EdtGastoExit(Sender: TObject);
begin
  if EdtGasto.Text <> '' then
  begin
    EdtGastoVar := StrToFloat(EdtGasto.Text);
    EdtGasto.Text  := 'R$' + FormatFloat('0.00#,##',EdtGastoVar);
  end
  else
  begin
    EdtGasto.Text := 'R$0,00';
  end;
end;

procedure TFrmTabela.EdtRetornadoEnter(Sender: TObject);
begin
  if hasData then
  begin
    EdtRetornado.Text := FloatToStr(EdtRetornadoVar);
  end;

  if not(EdtRetornadoVar > 0) then
  begin
    EdtRetornado.Text := '';
  end
  else
  begin
    EdtRetornado.Text := FloatToStr(EdtRetornadoVar);
  end;
end;

procedure TFrmTabela.EdtRetornadoExit(Sender: TObject);
begin
  if EdtRetornado.Text <> '' then
  begin
    EdtRetornadoVar := StrToFloat(EdtRetornado.Text);
    EdtRetornado.Text  := 'R$' + FormatFloat('0.00#,##',EdtRetornadoVar);
  end
  else
  begin
    EdtRetornado.Text := 'R$0,00';
  end;
end;

procedure TFrmTabela.FormCreate(Sender: TObject);
begin
  diag := TFancyDialog.Create(FrmTabela);
end;

procedure TFrmTabela.FormShow(Sender: TObject);
begin
  dmPrincipal.qryGERENCIAMENTO.Active := False;
  dmprincipal.qryGERENCIAMENTO.Active := True;

  hasData := False;

  if dmPrincipal.qryGERENCIAMENTO.RecordCount > 0 then
  begin
    EdtGanhos.Text    := IntToStr(DmPrincipal.qryGERENCIAMENTO.FieldByName('GANHOS').AsInteger);
    EdtGanhosVar      := DmPrincipal.qryGERENCIAMENTO.FieldByName('GANHOS').AsInteger;

    EdtFeitos.Text    := IntToStr(DmPrincipal.qryGERENCIAMENTO.FieldByName('FEITOS').AsInteger);
    EdtFeitosVar      := DmPrincipal.qryGERENCIAMENTO.FieldByName('FEITOS').AsInteger;

    EdtGasto.Text     := 'R$' + FormatFloat('0.00#,##',DmPrincipal.qryGERENCIAMENTO.FieldByName('GASTOS').AsFloat);
    EdtGastoVar       := DmPrincipal.qryGERENCIAMENTO.FieldByName('GASTOS').AsFloat;

    EdtRetornado.Text := 'R$' + FormatFloat('0.00#,##',DmPrincipal.qryGERENCIAMENTO.FieldByName('RETORNADO').AsFloat);
    EdtRetornadoVar   := DmPrincipal.qryGERENCIAMENTO.FieldByName('RETORNADO').AsFloat;

    LblLucro.Text := 'Lucro - ' + 'R$' + FormatFloat('0.00#,##',DmPrincipal.qryGERENCIAMENTO.FieldByName('RETORNADO').AsFloat
    - DmPrincipal.qryGERENCIAMENTO.FieldByName('GASTOS').AsFloat);

    hasData := True;
  end;



end;

procedure TFrmTabela.Image1Click(Sender: TObject);
begin
  TThread.Synchronize(nil,procedure
    begin
      RecMenuFundo.Visible := true;

      WidthAnimation.Start;
    end);
end;

procedure TFrmTabela.Image2Click(Sender: TObject);
begin
  TThread.Synchronize(nil,procedure
    begin
      WidthAnimation2.Start;
    end);

    TThread.Synchronize(nil,procedure
    begin
      image2.HitTest := false;
      label12.Visible := false;
      layout52.Visible := false;
    end);
end;

procedure TFrmTabela.Label13Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPrincipal, frmPrincipal);
  frmPrincipal.Show;

  FrmPrincipal.geraNumeros(FrmPrincipal);
end;

procedure TFrmTabela.Label14Click(Sender: TObject);
begin
  Application.CreateForm(TFrmVencedores, FrmVencedores);
  FrmVencedores.Show;

  //frmTabela.Close;
end;

procedure TFrmTabela.Label15Click(Sender: TObject);
begin
  Application.CreateForm(TfrmLotomania, frmLotomania);
  frmLotomania.Show;

  FrmLotomania.geraLotomaniaUm(FrmLotomania);
  FrmLotomania.geraLotomaniaDois(FrmLotomania);
  FrmLotomania.geraLotomaniaTres(FrmLotomania);

end;

procedure TFrmTabela.Label16Click(Sender: TObject);
begin
  TThread.Synchronize(nil,procedure
    begin
      WidthAnimation2.Start;
    end);

    TThread.Synchronize(nil,procedure
    begin
      image2.HitTest := false;
      label12.Visible := false;
      layout52.Visible := false;
    end);

    if not frmInicial.liberado then
    begin
      diag.Show(TIconDialog.Error,'Ops','Voc� ainda n�o tem acesso � esse b�nus');
    end;
end;

procedure TFrmTabela.Label17Click(Sender: TObject);
begin
  Application.CreateForm(TFrmJogos, frmJogos);
  frmJogos.Show;
end;

procedure TFrmTabela.LBLINICIOClick(Sender: TObject);
begin
  Application.CreateForm(TFrmInicial,FrmInicial);
  FrmInicial.Show;
end;

procedure TFrmTabela.Rectangle5Click(Sender: TObject);
begin
  if hasData then
  begin
    DmPrincipal.qryEditGerenciamento.Active := False;
    DmPrincipal.qryEditGerenciamento.Active := True;
    DmPrincipal.qryEditGerenciamento.Edit;

    DmPrincipal.qryEditGerenciamento.FieldByName('FEITOS').AsInteger := EdtFeitosVar;
    DmPrincipal.qryEditGerenciamento.FieldByName('GANHOS').AsInteger := EdtGanhosVar;
    DmPrincipal.qryEditGerenciamento.FieldByName('GASTOS').AsFloat   := EdtGastoVar;
    DmPrincipal.qryEditGerenciamento.FieldByName('RETORNADO').AsFloat:= EdtRetornadoVar;

    DmPrincipal.qryEditGerenciamento.Post;
  end
  else
  begin
    DmPrincipal.qryGERENCIAMENTO.Active := False;
    DmPrincipal.qryGERENCIAMENTO.Active := True;
    DmPrincipal.qryGERENCIAMENTO.Insert;

    DmPrincipal.qryGERENCIAMENTO.FieldByName('ID').AsInteger := 1;
    DmPrincipal.qryGERENCIAMENTO.FieldByName('FEITOS').AsInteger := EdtFeitosVar;
    DmPrincipal.qryGERENCIAMENTO.FieldByName('GANHOS').AsInteger := EdtGanhosVar;
    DmPrincipal.qryGERENCIAMENTO.FieldByName('GASTOS').AsFloat   := EdtGastoVar;
    DmPrincipal.qryGERENCIAMENTO.FieldByName('RETORNADO').AsFloat:= EdtRetornadoVar;

    DmPrincipal.qryGERENCIAMENTO.Post;
  end;

  LblLucro.Text := 'Lucro - ' + 'R$' + FormatFloat('0.00#,##',EdtRetornadoVar
    - EdtGastoVar);
end;

procedure TFrmTabela.WidthAnimationFinish(Sender: TObject);
begin
  TThread.Synchronize(nil,procedure
    begin
      image2.HitTest := true;
      label12.Visible := true;
      layout52.Visible := true;
    end);
end;

end.
