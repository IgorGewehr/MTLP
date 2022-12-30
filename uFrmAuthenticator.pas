unit uFrmAuthenticator;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit, uFancyDialog,
  FMX.Effects, System.DateUtils, FireDAC.UI.Intf, FireDAC.FMXUI.Async,
  FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TfrmAuthent = class(TForm)
    LytImage: TLayout;
    Image1: TImage;
    lytVerificar: TLayout;
    recVerificar: TRectangle;
    LytButton: TLayout;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Edit1: TEdit;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    Label2: TLabel;
    Image2: TImage;
    ShadowEffect1: TShadowEffect;
    StyleBook1: TStyleBook;
    Layout2: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    procedure Rectangle1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    autenticado : string;
    liberado : TDateTime;
    acessoIgor : Boolean;
  end;

var
  frmAuthent: TfrmAuthent;
  diag : TFancyDialog;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.Surface.fmx MSWINDOWS}

uses
Loading, math, uDmPrincipal, uFrmVencedores,uFrmLotomania, uFrmTabela, uFrmPrincipal, uFrmInicial, uOpenViewUrl;

procedure TfrmAuthent.FormShow(Sender: TObject);
begin
  rectangle2.Margins.Bottom := (frmAuthent.height /2) - 180;
end;

procedure TfrmAuthent.Label4Click(Sender: TObject);
begin
  OpenUrl('https://api.whatsapp.com/send?phone=5549991808125&text=Tenho%20interesse%20em%20adquirir%20o%20M%C3%A9todo%20Lotopremium');
end;

procedure TfrmAuthent.Rectangle1Click(Sender: TObject);
begin
  diag := TFancyDialog.Create(frmAuthent);

  autenticado := 'metodoloto';
  if (edit1.Text = autenticado) or (edit1.Text = 'igordev') then
  begin

    if edit1.Text = 'igordev' then
    begin
      acessoIgor := True;
    end;

    Application.CreateForm(TFrmInicial,FrmInicial);
    FrmInicial.show;

    TLoading.Show(frmInicial, 'Sincronizando dados...');

    dmPrincipal.qryONLINEDATA.Active := False;
    dmPrincipal.qryONLINEDATA.Active := True;



      if dmPrincipal.qryONLINEDATA.RecordCount > 0 then
      begin
        if (DayOf(today) mod 3 = 0) then
        begin
          if dmPrincipal.qryONLINEDATA.FieldByName('ULTIMA_ATT').AsDateTime <> today then
          begin
            frmPrincipal.deletaBanco;
            dmPrincipal.CarregaBD;

            TThread.Synchronize(nil,procedure
            begin
              TLoading.Hide;
            end);
          end
          else
          begin
            TThread.Synchronize(nil,procedure
            begin
              TLoading.Hide;
            end);
          end;

        end;
      end
      else
      begin
        dmPrincipal.CarregaBD;

        TThread.Synchronize(nil,procedure
        begin
          TLoading.Hide;
        end);
      end;

      TThread.Synchronize(nil,procedure
      begin
        TLoading.Hide;
      end);


  end
  else
  begin
     diag.Show(TIconDialog.Error,'Ops','Voc� c�digo inv�lido :(');
  end;

end;

end.
