unit uDmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.IOUtils, System.DateUtils;

type
  TDataModule1 = class(TDataModule)
    ConnPrincipal: TFDConnection;
    qryNUMEROSUM: TFDQuery;
    qryNUMEROSSEIS: TFDQuery;
    qryNUMEROSDOIS: TFDQuery;
    qryNUMEROSQUATRO: TFDQuery;
    qryNUMEROSTRES: TFDQuery;
    qryNUMEROSOITO: TFDQuery;
    qryNUMEROSSETE: TFDQuery;
    qryNUMEROSCINCO: TFDQuery;
    qryNUMEROSNOVE: TFDQuery;
    qryNUMEROSDEZ: TFDQuery;
    qryONLINEDATA: TFDQuery;
    qryONLINEDELETAR: TFDQuery;
    qryLOTOMANIAUm: TFDQuery;
    qryLOTOMANIADois: TFDQuery;
    qryLOTOMANIATres: TFDQuery;
    qryLIBERATION: TFDQuery;
    qryLIBERATIONDATE: TDateTimeField;
    qryGERENCIAMENTO: TFDQuery;
    qryEditGerenciamento: TFDQuery;
    qryVencedores: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dataLiberation : TDateTime;
    procedure Liberation;
    procedure CriaNumerosAleatoriosJogo1;
    procedure CriaNumerosAleatoriosJogo2;
    procedure CriaNumerosAleatoriosJogo3;
    procedure CriaNumerosAleatoriosJogo4;
    procedure CriaNumerosAleatoriosJogo5;
    procedure CriaNumerosAleatoriosJogo6;
    procedure CriaNumerosAleatoriosJogo7;
    procedure CriaNumerosAleatoriosJogo8;
    procedure CriaNumerosAleatoriosJogo9;
    procedure CriaNumerosAleatoriosJogo10;
    procedure CriarJogoLotomaniaUm;
    procedure CriarJogoLotomaniaDois;
    procedure CriarJogoLotomaniaTres;
    procedure CarregaBD;
  end;

var
  dmPrincipal: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}
uses
math;



procedure TDataModule1.Liberation;
var
data : TDateTime;
begin
  qryLIBERATION.Close;
  qryLIBERATION.Open;

  if qryLIBERATION.RecordCount > 0 then
  begin
    dataLiberation := qryLIBERATIONDATE.AsDateTime;
  end
  else
  begin
    qryLIBERATION.Insert;
    qryLIBERATIONDATE.AsDateTime := today;
    dataLiberation := today;
    qryLIBERATION.Post;
  end;

end;

procedure tDataModule1.CarregaBD;
begin
  CriaNumerosAleatoriosJogo1;
  CriaNumerosAleatoriosJogo2;
  CriaNumerosAleatoriosJogo3;
  CriaNumerosAleatoriosJogo4;
  CriaNumerosAleatoriosJogo5;
  CriaNumerosAleatoriosJogo6;
  CriaNumerosAleatoriosJogo7;
  CriaNumerosAleatoriosJogo8;
  CriaNumerosAleatoriosJogo9;
  CriaNumerosAleatoriosJogo10;
  CriarJogoLotomaniaUm;
  CriarJogoLotomaniaDois;
  CriarJogoLotomaniaTres;

  qryONLINEDATA.Active := False;
  qryONLINEDATA.Active := True;
  qryONLINEDATA.insert;
  qryONLINEDATA.FieldByName('ULTIMA_ATT').AsDateTime := today;
  qryONLINEDATA.Post;

end;

procedure TDataModule1.CriarJogoLotomaniaUm;
var
i,j: integer;
arrayInteiros : array [1..51] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 51 do
  begin
    arrayInteiros[i] := RandomRange(1,100);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;


  end;


    for i := 1 to 50 do
    begin
      for j := 1 to 50 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryLOTOMANIAUm.Close;
    qryLOTOMANIAUm.Open;
    qryLOTOMANIAUm.Insert;

    for i := 1 to 50 do
    begin
      qryLOTOMANIAUm.Insert;
      dmPrincipal.qryLOTOMANIAUm.FieldByName('NUMEROS_A').AsInteger := arrayInteiros[i];
      qryLOTOMANIAUm.Post;
    end;

end;

procedure TDataModule1.CriarJogoLotomaniaDois;
var
i,j: integer;
arrayInteiros : array [1..51] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 51 do
  begin
    arrayInteiros[i] := RandomRange(1,100);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;


  end;


    for i := 1 to 50 do
    begin
      for j := 1 to 50 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryLOTOMANIADois.Close;
    qryLOTOMANIADois.Open;
    qryLOTOMANIADois.Insert;

    for i := 1 to 50 do
    begin
      qryLOTOMANIADois.Insert;
      dmPrincipal.qryLOTOMANIADois.FieldByName('NUMEROS_B').AsInteger := arrayInteiros[i];
      qryLOTOMANIADois.Post;
    end;

end;

procedure TDataModule1.CriarJogoLotomaniaTres;
var
i,j: integer;
arrayInteiros : array [1..51] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 51 do
  begin
    arrayInteiros[i] := RandomRange(1,100);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;


  end;


    for i := 1 to 50 do
    begin
      for j := 1 to 50 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryLOTOMANIATres.Close;
    qryLOTOMANIATres.Open;
    qryLOTOMANIATres.Insert;

    for i := 1 to 50 do
    begin
      qryLOTOMANIATres.Insert;
      dmPrincipal.qryLOTOMANIATres.FieldByName('NUMEROS_C').AsInteger := arrayInteiros[i];
      qryLOTOMANIATres.Post;
    end;

end;



procedure TDataModule1.CriaNumerosAleatoriosJogo1;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,26);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;


  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSUM.Close;
    qryNUMEROSUM.Open;

    for i := 1 to 16 do
    begin
      qryNUMEROSUM.Insert;
      dmPrincipal.qryNUMEROSUM.FieldByName('NUMEROS_A').AsInteger := arrayInteiros[i];
      qryNUMEROSUM.Post;
    end;

end;



procedure TDataModule1.CriaNumerosAleatoriosJogo2;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,26);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;


  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSDOIS.Close;
    qryNUMEROSDOIS.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSDOIS.Insert;
      dmPrincipal.qryNUMEROSDOIS.FieldByName('NUMEROS_B').AsInteger := arrayInteiros[i];
      qryNUMEROSDOIS.Post;
    end;



end;

procedure TDataModule1.CriaNumerosAleatoriosJogo3;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,26);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSTRES.Close;
    qryNUMEROSTRES.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSTRES.Insert;
      dmPrincipal.qryNUMEROSTRES.FieldByName('NUMEROS_C').AsInteger := arrayInteiros[i];
      qryNUMEROSTRES.Post;
    end;


end;

procedure TDataModule1.CriaNumerosAleatoriosJogo4;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,26);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSQUATRO.Close;
    qryNUMEROSQUATRO.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSQUATRO.Insert;
      dmPrincipal.qryNUMEROSQUATRO.FieldByName('NUMEROS_D').AsInteger := arrayInteiros[i];
      qryNUMEROSQUATRO.Post;
    end;



end;

procedure TDataModule1.CriaNumerosAleatoriosJogo5;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,26);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSCINCO.Close;
    qryNUMEROSCINCO.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSCINCO.Insert;
      dmPrincipal.qryNUMEROSCINCO.FieldByName('NUMEROS_E').AsInteger := arrayInteiros[i];
      qryNUMEROSCINCO.Post;
    end;

end;

procedure TDataModule1.CriaNumerosAleatoriosJogo6;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,26);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;

    qryNUMEROSSEIS.Close;
    qryNUMEROSSEIS.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSSEIS.Insert;
      dmPrincipal.qryNUMEROSSEIS.FieldByName('NUMEROS_F').AsInteger := arrayInteiros[i];
      qryNUMEROSSEIS.Post;
    end;


end;

procedure TDataModule1.CriaNumerosAleatoriosJogo7;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,25);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSSETE.Close;
    qryNUMEROSSETE.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSSETE.Insert;
      dmPrincipal.qryNUMEROSSETE.FieldByName('NUMEROS_G').AsInteger := arrayInteiros[i];
      qryNUMEROSSETE.Post;
    end;



end;

procedure TDataModule1.CriaNumerosAleatoriosJogo8;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,25);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSOITO.Close;
    qryNUMEROSOITO.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSOITO.Insert;
      dmPrincipal.qryNUMEROSOITO.FieldByName('NUMEROS_H').AsInteger := arrayInteiros[i];
      qryNUMEROSOITO.Post;
    end;



end;

procedure TDataModule1.CriaNumerosAleatoriosJogo9;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,26);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;


    qryNUMEROSNOVE.Close;
    qryNUMEROSNOVE.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSNOVE.Insert;
      dmPrincipal.qryNUMEROSNOVE.FieldByName('NUMEROS_I').AsInteger := arrayInteiros[i];
      qryNUMEROSNOVE.Post;
    end;





end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
teste:String;
begin

    with ConnPrincipal do
    begin
        Params.Values['DriverID'] := 'SQLite';

        {$IFDEF IOS}
        Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'bdnumeros.db');
        {$ENDIF}

        {$IFDEF ANDROID}
        Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'bdnumeros.db');
        {$ENDIF}

        {$IFDEF MSWINDOWS}
        Params.Values['Database'] := System.SysUtils.GetCurrentDir + '\..\..\bd\bdnumeros.db';
        {$ENDIF}
       teste := System.SysUtils.GetCurrentDir + '\..\..\bd\bdnumeros.db';
        try
            Connected := true;
        except on e:exception do
            raise Exception.Create('Erro de conex�o com o banco de dados: ' + e.Message);
        end;
    end;


end;

procedure TDataModule1.CriaNumerosAleatoriosJogo10;
var
i,j: integer;
arrayInteiros : array [1..16] of integer;
aux, contador : integer;
auxBool : boolean;
begin
  i := 1;
  j := 1;



  while i < 17 do
  begin
    arrayInteiros[i] := RandomRange(1,25);
    contador := 0;

    for j := 1 to i - 1 do
    begin
      if arrayInteiros[j] = arrayInteiros[i] then
      begin
        contador := 1;
      end;
    end;
    if contador = 0 then
      i := i + 1;

  end;


    for i := 1 to 16 do
    begin
      for j := 1 to 15 do
      begin
        if arrayInteiros[j] > arrayInteiros[j+1] then
        begin
          aux := arrayInteiros[j];
          arrayInteiros[j] := arrayInteiros[j+1];
          arrayInteiros[j + 1] := aux;

        end;

      end;
    end;

    qryNUMEROSDEZ.Close;
    qryNUMEROSDEZ.Open;
    for i := 1 to 16 do
    begin
      qryNUMEROSDEZ.Insert;
      dmPrincipal.qryNUMEROSDEZ.FieldByName('NUMEROS_J').AsInteger := arrayInteiros[i];
      qryNUMEROSDEZ.Post;
    end;
end;

end.
