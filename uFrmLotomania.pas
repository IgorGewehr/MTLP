unit uFrmLotomania;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, System.DateUtils, uFancyDialog;

type
  TFrmLotomania = class(TForm)
    LytFundo: TLayout;
    LytTitulo: TLayout;
    LblTitulo: TLabel;
    Image1: TImage;
    LytBottom: TLayout;
    Label1: TLabel;
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
    lotomania3: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    VertScrollBox1: TVertScrollBox;
    Circle1: TCircle;
    Label1a: TLabel;
    Circle2: TCircle;
    Label2: TLabel;
    Circle3: TCircle;
    Label3: TLabel;
    Circle4: TCircle;
    Label4: TLabel;
    Circle5: TCircle;
    Label5: TLabel;
    Circle6: TCircle;
    Label6: TLabel;
    Circle7: TCircle;
    Label7: TLabel;
    Circle8: TCircle;
    Label8: TLabel;
    Circle9: TCircle;
    Label9: TLabel;
    Circle10: TCircle;
    Label10: TLabel;
    Circle11: TCircle;
    Label11: TLabel;
    Circle12: TCircle;
    Label18: TLabel;
    Circle13: TCircle;
    Label19: TLabel;
    Circle14: TCircle;
    Label20: TLabel;
    Circle15: TCircle;
    Label21: TLabel;
    Circle16: TCircle;
    Label22: TLabel;
    Circle17: TCircle;
    Label23: TLabel;
    Circle18: TCircle;
    Label24: TLabel;
    Circle19: TCircle;
    Label25: TLabel;
    Circle20: TCircle;
    Label26: TLabel;
    Circle21: TCircle;
    Label27: TLabel;
    Circle22: TCircle;
    Label28: TLabel;
    Circle23: TCircle;
    Label29: TLabel;
    Circle24: TCircle;
    Label30: TLabel;
    Circle25: TCircle;
    Label31: TLabel;
    Circle26: TCircle;
    Label32: TLabel;
    Circle27: TCircle;
    Label33: TLabel;
    Circle28: TCircle;
    Label34: TLabel;
    Circle29: TCircle;
    Label35: TLabel;
    Circle30: TCircle;
    Label36: TLabel;
    Circle31: TCircle;
    Label37: TLabel;
    Circle32: TCircle;
    Label38: TLabel;
    Circle33: TCircle;
    Label39: TLabel;
    Circle34: TCircle;
    Label40: TLabel;
    Circle35: TCircle;
    Label41: TLabel;
    Circle36: TCircle;
    Label42: TLabel;
    Circle37: TCircle;
    Label43: TLabel;
    Circle38: TCircle;
    Label44: TLabel;
    Circle39: TCircle;
    Label45: TLabel;
    Circle40: TCircle;
    Label46: TLabel;
    Circle41: TCircle;
    Label47: TLabel;
    Circle42: TCircle;
    Label48: TLabel;
    Circle43: TCircle;
    Label49: TLabel;
    Circle44: TCircle;
    Label50: TLabel;
    D: TCircle;
    Label51: TLabel;
    Circle45: TCircle;
    Label52: TLabel;
    Circle46: TCircle;
    Label53: TLabel;
    Circle47: TCircle;
    Label54: TLabel;
    Circle48: TCircle;
    Label55: TLabel;
    Circle49: TCircle;
    Label56: TLabel;
    lotomania2: TRectangle;
    GridPanelLayout2: TGridPanelLayout;
    Circle50: TCircle;
    Label57: TLabel;
    Circle51: TCircle;
    Label58: TLabel;
    Circle52: TCircle;
    Label59: TLabel;
    Circle53: TCircle;
    Label60: TLabel;
    Circle54: TCircle;
    Label61: TLabel;
    Circle55: TCircle;
    Label62: TLabel;
    Circle56: TCircle;
    Label63: TLabel;
    Circle57: TCircle;
    Label64: TLabel;
    Circle58: TCircle;
    Label65: TLabel;
    Circle59: TCircle;
    Label66: TLabel;
    Circle60: TCircle;
    Label67: TLabel;
    Circle61: TCircle;
    Label68: TLabel;
    Circle62: TCircle;
    Label69: TLabel;
    Circle63: TCircle;
    Label70: TLabel;
    Circle64: TCircle;
    Label71: TLabel;
    Circle65: TCircle;
    Label72: TLabel;
    Circle66: TCircle;
    Label73: TLabel;
    Circle67: TCircle;
    Label74: TLabel;
    Circle68: TCircle;
    Label75: TLabel;
    Circle69: TCircle;
    Label76: TLabel;
    Circle70: TCircle;
    Label77: TLabel;
    Circle71: TCircle;
    Label78: TLabel;
    Circle72: TCircle;
    Label79: TLabel;
    Circle73: TCircle;
    Label80: TLabel;
    Circle74: TCircle;
    Label81: TLabel;
    Circle75: TCircle;
    Label82: TLabel;
    Circle76: TCircle;
    Label83: TLabel;
    Circle77: TCircle;
    Label84: TLabel;
    Circle78: TCircle;
    Label85: TLabel;
    Circle79: TCircle;
    Label86: TLabel;
    Circle80: TCircle;
    Label87: TLabel;
    Circle81: TCircle;
    Label88: TLabel;
    Circle82: TCircle;
    Label89: TLabel;
    Circle83: TCircle;
    Label90: TLabel;
    Circle84: TCircle;
    Label91: TLabel;
    Circle85: TCircle;
    Label92: TLabel;
    Circle86: TCircle;
    Label93: TLabel;
    Circle87: TCircle;
    Label94: TLabel;
    Circle88: TCircle;
    Label95: TLabel;
    Circle89: TCircle;
    Label96: TLabel;
    Circle90: TCircle;
    Label97: TLabel;
    Circle91: TCircle;
    Label98: TLabel;
    Circle92: TCircle;
    Label99: TLabel;
    Circle93: TCircle;
    Label100: TLabel;
    Circle94: TCircle;
    Label101: TLabel;
    Circle95: TCircle;
    Label102: TLabel;
    Circle96: TCircle;
    Label103: TLabel;
    Circle97: TCircle;
    Label104: TLabel;
    Circle98: TCircle;
    Label105: TLabel;
    Circle99: TCircle;
    Label106: TLabel;
    lotomania1: TRectangle;
    GridPanelLayout3: TGridPanelLayout;
    Circle100: TCircle;
    Label107: TLabel;
    Circle101: TCircle;
    Label108: TLabel;
    Circle102: TCircle;
    Label109: TLabel;
    Circle103: TCircle;
    Label110: TLabel;
    Circle104: TCircle;
    Label111: TLabel;
    Circle105: TCircle;
    Label112: TLabel;
    Circle106: TCircle;
    Label113: TLabel;
    Circle107: TCircle;
    Label114: TLabel;
    Circle108: TCircle;
    Label115: TLabel;
    Circle109: TCircle;
    Label116: TLabel;
    Circle110: TCircle;
    Label117: TLabel;
    Circle111: TCircle;
    Label118: TLabel;
    Circle112: TCircle;
    Label119: TLabel;
    Circle113: TCircle;
    Label120: TLabel;
    Circle114: TCircle;
    Label121: TLabel;
    Circle115: TCircle;
    Label122: TLabel;
    Circle116: TCircle;
    Label123: TLabel;
    Circle117: TCircle;
    Label124: TLabel;
    Circle118: TCircle;
    Label125: TLabel;
    Circle119: TCircle;
    Label126: TLabel;
    Circle120: TCircle;
    Label127: TLabel;
    Circle121: TCircle;
    Label128: TLabel;
    Circle122: TCircle;
    Label129: TLabel;
    Circle123: TCircle;
    Label130: TLabel;
    Circle124: TCircle;
    Label131: TLabel;
    Circle125: TCircle;
    Label132: TLabel;
    Circle126: TCircle;
    Label133: TLabel;
    Circle127: TCircle;
    Label134: TLabel;
    Circle128: TCircle;
    Label135: TLabel;
    Circle129: TCircle;
    Label136: TLabel;
    Circle130: TCircle;
    Label137: TLabel;
    Circle131: TCircle;
    Label138: TLabel;
    Circle132: TCircle;
    Label139: TLabel;
    Circle133: TCircle;
    Label140: TLabel;
    Circle134: TCircle;
    Label141: TLabel;
    Circle135: TCircle;
    Label142: TLabel;
    Circle136: TCircle;
    Label143: TLabel;
    Circle137: TCircle;
    Label144: TLabel;
    Circle138: TCircle;
    Label145: TLabel;
    Circle139: TCircle;
    Label146: TLabel;
    Circle140: TCircle;
    Label147: TLabel;
    Circle141: TCircle;
    Label148: TLabel;
    Circle142: TCircle;
    Label149: TLabel;
    Circle143: TCircle;
    Label150: TLabel;
    Circle144: TCircle;
    Label151: TLabel;
    Circle145: TCircle;
    Label152: TLabel;
    Circle146: TCircle;
    Label153: TLabel;
    Circle147: TCircle;
    Label154: TLabel;
    Circle148: TCircle;
    Label155: TLabel;
    Circle149: TCircle;
    Label156: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Layout4: TLayout;
    Image8: TImage;
    LBLINICIO: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
    diag : TFancyDialog;
    procedure geraLotomaniaUm(Sender: TObject);
    procedure geraLotomaniaTres(Sender: TObject);
    procedure geraLotomaniaDois(Sender: TObject);
  end;

var
  FrmLotomania: TFrmLotomania;

implementation

{$R *.fmx}

uses
Loading, math, uDmPrincipal, uFrmVencedores, uFrmTabela, uFrmPrincipal, uFrmInicial, uFrmJogos;



procedure TFrmLotomania.Image1Click(Sender: TObject);
begin
  TThread.Synchronize(nil,procedure
    begin
      RecMenuFundo.Visible := true;

      WidthAnimation.Start;
    end);
end;

procedure TFrmLotomania.Image2Click(Sender: TObject);
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

procedure TFrmLotomania.Label13Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPrincipal,frmPrincipal);
  frmPrincipal.Show;

  frmPrincipal.geraNumeros(FrmPrincipal);

  //FrmLotomania.Close;
end;

procedure TFrmLotomania.Label14Click(Sender: TObject);
begin
  Application.CreateForm(TFrmVencedores, frmVencedores);
  frmVencedores.Show;

  //frmLotomania.Close;
end;



procedure TFrmLotomania.geraLotomaniaUm(Sender: TObject);
var
i: integer;
arrayInteiros : array [1..51] of integer;
begin
  i := 1;

  dmPrincipal.qryLOTOMANIAUm.Active := False;
  dmPrincipal.qryLOTOMANIAUm.Active := True;

  while not dmPrincipal.qryLOTOMANIAUm.Eof do
  begin
    arrayInteiros[i] := dmPrincipal.qryLOTOMANIAUm.FieldByName('NUMEROS_A').AsInteger;

    dmPrincipal.qryLOTOMANIAUm.next;

    i := i + 1;
  end;

  TThread.Synchronize(nil, procedure
  begin
    label107.Text := IntToStr(arrayInteiros[1]);
    label108.Text := IntToStr(arrayInteiros[2]);
    label109.Text := IntToStr(arrayInteiros[3]);
    label110.Text := IntToStr(arrayInteiros[4]);
    label111.Text := IntToStr(arrayInteiros[5]);
    label112.Text := IntToStr(arrayInteiros[6]);
    label113.Text := IntToStr(arrayInteiros[7]);
    label114.Text := IntToStr(arrayInteiros[8]);
    label115.Text := IntToStr(arrayInteiros[9]);
    label116.Text := IntToStr(arrayInteiros[10]);
    label117.Text := IntToStr(arrayInteiros[11]);
    label118.Text := IntToStr(arrayInteiros[12]);
    label119.Text := IntToStr(arrayInteiros[13]);
    label120.Text := IntToStr(arrayInteiros[14]);
    label121.Text := IntToStr(arrayInteiros[15]);
    label122.Text := IntToStr(arrayInteiros[16]);
    label123.Text := IntToStr(arrayInteiros[17]);
    label124.Text := IntToStr(arrayInteiros[18]);
    label125.Text := IntToStr(arrayInteiros[19]);
    label126.Text := IntToStr(arrayInteiros[20]);
    label127.Text := IntToStr(arrayInteiros[21]);
    label128.Text := IntToStr(arrayInteiros[22]);
    label129.Text := IntToStr(arrayInteiros[23]);
    label130.Text := IntToStr(arrayInteiros[24]);
    label131.Text := IntToStr(arrayInteiros[25]);
    label132.Text := IntToStr(arrayInteiros[26]);
    label133.Text := IntToStr(arrayInteiros[27]);
    label134.Text := IntToStr(arrayInteiros[28]);
    label135.Text := IntToStr(arrayInteiros[29]);
    label136.Text := IntToStr(arrayInteiros[30]);
    label137.Text := IntToStr(arrayInteiros[31]);
    label138.Text := IntToStr(arrayInteiros[32]);
    label139.Text := IntToStr(arrayInteiros[33]);
    label140.Text := IntToStr(arrayInteiros[34]);
    label141.Text := IntToStr(arrayInteiros[35]);
    label142.Text := IntToStr(arrayInteiros[36]);
    label143.Text := IntToStr(arrayInteiros[37]);
    label144.Text := IntToStr(arrayInteiros[38]);
    label145.Text := IntToStr(arrayInteiros[39]);
    label146.Text := IntToStr(arrayInteiros[40]);
    label147.Text := IntToStr(arrayInteiros[41]);
    label148.Text := IntToStr(arrayInteiros[42]);
    label149.Text := IntToStr(arrayInteiros[43]);
    label150.Text := IntToStr(arrayInteiros[44]);
    label151.Text := IntToStr(arrayInteiros[45]);
    label152.Text := IntToStr(arrayInteiros[46]);
    label153.Text := IntToStr(arrayInteiros[47]);
    label154.Text := IntToStr(arrayInteiros[48]);
    label155.Text := IntToStr(arrayInteiros[49]);
    label156.Text := IntToStr(arrayInteiros[50]);

  end);


end;

procedure TFrmLotomania.FormCreate(Sender: TObject);
begin
  diag := TFancyDialog.Create(FrmInicial);
end;

procedure TFrmLotomania.geraLotomaniaDois(Sender: TObject);
var
i: integer;
arrayInteiros : array [1..51] of integer;
begin
  i := 1;

  dmPrincipal.qryLOTOMANIADois.Active := False;
  dmPrincipal.qryLOTOMANIADois.Active := True;

  while not dmPrincipal.qryLOTOMANIADois.Eof do
  begin
    arrayInteiros[i] := dmPrincipal.qryLOTOMANIADois.FieldByName('NUMEROS_B').AsInteger;

    dmPrincipal.qryLOTOMANIADois.next;

    i := i + 1;
  end;

  TThread.Synchronize(nil, procedure
  begin
    label57.Text := IntToStr(arrayInteiros[1]);
    label58.Text := IntToStr(arrayInteiros[2]);
    label59.Text := IntToStr(arrayInteiros[3]);
    label60.Text := IntToStr(arrayInteiros[4]);
    label61.Text := IntToStr(arrayInteiros[5]);
    label62.Text := IntToStr(arrayInteiros[6]);
    label63.Text := IntToStr(arrayInteiros[7]);
    label64.Text := IntToStr(arrayInteiros[8]);
    label65.Text := IntToStr(arrayInteiros[9]);
    label66.Text := IntToStr(arrayInteiros[10]);
    label67.Text := IntToStr(arrayInteiros[11]);
    label68.Text := IntToStr(arrayInteiros[12]);
    label69.Text := IntToStr(arrayInteiros[13]);
    label70.Text := IntToStr(arrayInteiros[14]);
    label71.Text := IntToStr(arrayInteiros[15]);
    label72.Text := IntToStr(arrayInteiros[16]);
    label73.Text := IntToStr(arrayInteiros[17]);
    label74.Text := IntToStr(arrayInteiros[18]);
    label75.Text := IntToStr(arrayInteiros[19]);
    label76.Text := IntToStr(arrayInteiros[20]);
    label77.Text := IntToStr(arrayInteiros[21]);
    label78.Text := IntToStr(arrayInteiros[22]);
    label79.Text := IntToStr(arrayInteiros[23]);
    label80.Text := IntToStr(arrayInteiros[24]);
    label81.Text := IntToStr(arrayInteiros[25]);
    label82.Text := IntToStr(arrayInteiros[26]);
    label83.Text := IntToStr(arrayInteiros[27]);
    label84.Text := IntToStr(arrayInteiros[28]);
    label85.Text := IntToStr(arrayInteiros[29]);
    label86.Text := IntToStr(arrayInteiros[30]);
    label87.Text := IntToStr(arrayInteiros[31]);
    label88.Text := IntToStr(arrayInteiros[32]);
    label89.Text := IntToStr(arrayInteiros[33]);
    label90.Text := IntToStr(arrayInteiros[34]);
    label91.Text := IntToStr(arrayInteiros[35]);
    label92.Text := IntToStr(arrayInteiros[36]);
    label93.Text := IntToStr(arrayInteiros[37]);
    label94.Text := IntToStr(arrayInteiros[38]);
    label95.Text := IntToStr(arrayInteiros[39]);
    label96.Text := IntToStr(arrayInteiros[40]);
    label97.Text := IntToStr(arrayInteiros[41]);
    label98.Text := IntToStr(arrayInteiros[42]);
    label99.Text := IntToStr(arrayInteiros[43]);
    label100.Text := IntToStr(arrayInteiros[44]);
    label101.Text := IntToStr(arrayInteiros[45]);
    label102.Text := IntToStr(arrayInteiros[46]);
    label103.Text := IntToStr(arrayInteiros[47]);
    label104.Text := IntToStr(arrayInteiros[48]);
    label105.Text := IntToStr(arrayInteiros[49]);
    label106.Text := IntToStr(arrayInteiros[50]);

  end);


end;

procedure TFrmLotomania.geraLotomaniaTres(Sender: TObject);
var
i: integer;
arrayInteiros : array [1..51] of integer;
begin
  i := 1;

  dmPrincipal.qryLOTOMANIATres.Active := False;
  dmPrincipal.qryLOTOMANIATres.Active := True;

  while not dmPrincipal.qryLOTOMANIATres.Eof do
  begin
    arrayInteiros[i] := dmPrincipal.qryLOTOMANIATres.FieldByName('NUMEROS_C').AsInteger;

    dmPrincipal.qryLOTOMANIATres.next;

    i := i + 1;
  end;


    label1a.Text := IntToStr(arrayInteiros[1]);
    label2.Text := IntToStr(arrayInteiros[2]);
    label3.Text := IntToStr(arrayInteiros[3]);
    label4.Text := IntToStr(arrayInteiros[4]);
    label5.Text := IntToStr(arrayInteiros[5]);
    label6.Text := IntToStr(arrayInteiros[6]);
    label7.Text := IntToStr(arrayInteiros[7]);
    label8.Text := IntToStr(arrayInteiros[8]);
    label9.Text := IntToStr(arrayInteiros[9]);
    label10.Text := IntToStr(arrayInteiros[10]);
    label11.Text := IntToStr(arrayInteiros[11]);
    label18.Text := IntToStr(arrayInteiros[12]);
    label19.Text := IntToStr(arrayInteiros[13]);
    label20.Text := IntToStr(arrayInteiros[14]);
    label21.Text := IntToStr(arrayInteiros[15]);
    label22.Text := IntToStr(arrayInteiros[16]);
    label23.Text := IntToStr(arrayInteiros[17]);
    label24.Text := IntToStr(arrayInteiros[18]);
    label25.Text := IntToStr(arrayInteiros[19]);
    label26.Text := IntToStr(arrayInteiros[20]);
    label27.Text := IntToStr(arrayInteiros[21]);
    label28.Text := IntToStr(arrayInteiros[22]);
    label29.Text := IntToStr(arrayInteiros[23]);
    label30.Text := IntToStr(arrayInteiros[24]);
    label31.Text := IntToStr(arrayInteiros[25]);
    label32.Text := IntToStr(arrayInteiros[26]);
    label33.Text := IntToStr(arrayInteiros[27]);
    label34.Text := IntToStr(arrayInteiros[28]);
    label35.Text := IntToStr(arrayInteiros[29]);
    label36.Text := IntToStr(arrayInteiros[30]);
    label37.Text := IntToStr(arrayInteiros[31]);
    label38.Text := IntToStr(arrayInteiros[32]);
    label39.Text := IntToStr(arrayInteiros[33]);
    label40.Text := IntToStr(arrayInteiros[34]);
    label41.Text := IntToStr(arrayInteiros[35]);
    label42.Text := IntToStr(arrayInteiros[36]);
    label43.Text := IntToStr(arrayInteiros[37]);
    label44.Text := IntToStr(arrayInteiros[38]);
    label45.Text := IntToStr(arrayInteiros[39]);
    label46.Text := IntToStr(arrayInteiros[40]);
    label47.Text := IntToStr(arrayInteiros[41]);
    label48.Text := IntToStr(arrayInteiros[42]);
    label49.Text := IntToStr(arrayInteiros[43]);
    label50.Text := IntToStr(arrayInteiros[44]);
    label51.Text := IntToStr(arrayInteiros[45]);
    label52.Text := IntToStr(arrayInteiros[46]);
    label53.Text := IntToStr(arrayInteiros[47]);
    label54.Text := IntToStr(arrayInteiros[48]);
    label55.Text := IntToStr(arrayInteiros[49]);
    label56.Text := IntToStr(arrayInteiros[50]);




end;

procedure TFrmLotomania.Label15Click(Sender: TObject);
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

procedure TFrmLotomania.Label16Click(Sender: TObject);
begin
  Application.CreateForm(TFrmTabela, FrmTabela);
  frmTabela.Show;

  if not frmInicial.liberado then
    begin
      diag.Show(TIconDialog.Error,'Ops','Voc� ainda n�o tem acesso � esse b�nus');
    end;
end;

procedure TFrmLotomania.Label17Click(Sender: TObject);
begin
  Application.CreateForm(TFrmJogos, frmJogos);
  frmJogos.Show;
end;

procedure TFrmLotomania.LBLINICIOClick(Sender: TObject);
begin
  Application.CreateForm(TFrmInicial, FrmInicial);
  FrmInicial.Show;
end;

procedure TFrmLotomania.WidthAnimationFinish(Sender: TObject);
begin
  TThread.Synchronize(nil,procedure
    begin
      image2.HitTest := true;
      label12.Visible := true;
      layout52.Visible := true;
    end);
end;

end.
