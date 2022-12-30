unit uFuncoesGerais;

interface

uses

  System.PushNotification,
  System.Notification,
  System.IOUtils,

  {$IFDEF VER330 }
    System.Permissions,
  {$ENDIF}

  {$IFDEF ANDROID}
    FMX.PushNotification.Android,
    FMX.Platform.Android,
    Androidapi.Helpers,
    Androidapi.JNI.os,
    Androidapi.JNI.Widget,
    Androidapi.JNI.Telephony,
    Androidapi.JNI.Provider,
    Androidapi.JNIBridge,
    Androidapi.JNI.GraphicsContentViewText,
    Androidapi.JNI.JavaTypes,
    FMX.Helpers.Android,
  {$ENDIF}

  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, FMX.ActnList, System.ImageList,
  FMX.ImgList, FMX.Objects, FMX.Effects, FMX.Controls.Presentation,
  FMX.Layouts, FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.TextLayout;

  const
    APPNAME : string = 'SISFMX';

  {$IFDEF ANDROID}

  procedure Toast(const Msg: string; Duration: Integer);

  {$ENDIF}

  function infoToString(AValor: Variant): string;
  function infoToNumeric(AValor: Variant): Double;
  function infoToInteger(AValor: Variant): Integer;
  function infoToDate(AValor: Variant): TDatetime;
  function infoToLongInt(AValor: Variant): LongInt;

  function DIVIDIR(DIVIDENDO: Double; DIVIDOR: Double): Double;

  function infoToInt64(AValor: Variant): Int64;

  function fncCopyText(Texto:String; Indice:Integer; Field:Integer=0): variant;
  function fncInfoCount(Texto, Separador: String): Integer;
  function fncInfoPos(Texto, Conteudo, Separador: String): Integer;

  function fncAjustaTextoBusca(AValor: string): string;

  {
    Função "GetTextHeight" de: 99Coders
    Autor: Heber Stein Mazutti
    Site: http://vip.99coders.com.br/
  }

  function GetTextHeight(const D: TListItemText; const Width: single; const Text: string): Integer;
  Function TiraMascara(lConteudo: String  ): String;

implementation

{$IFDEF ANDROID}

procedure Toast(const Msg: string; Duration: Integer);
begin

  CallInUiThread
  (
    procedure
    begin
      TJToast.JavaClass.makeText(TAndroidHelper.Context, StrToJCharSequence(Msg), Duration).show
    end
  );

end;

{$ENDIF}

function infoToString(AValor: Variant): string;
begin

  try
    Result := AValor;
  except
    Result := '';
  end;

end;

function infoToNumeric(AValor: Variant): Double;
begin

  try
    Result := AValor;
  except
    Result := 0;
  end;

end;

function infoToInteger(AValor: Variant): Integer;
begin

  try
    Result := AValor;
  except
    Result := 0;
  end;

end;

function infoToDate(AValor: Variant): TDatetime;
var DAT: TDateTime;
begin

  try

    if (AValor <> NULL) then
    begin

      DAT := StrToDate(infoToString(AValor));
      Result := DAT;

    end;

  except
  end;

end;

function infoToLongInt(AValor: Variant): LongInt;
begin

  try
    Result := AValor;
  except
    Result := 0;
  end;

end;

function DIVIDIR(DIVIDENDO: Double; DIVIDOR: Double): Double;
begin
  try
    if (DIVIDENDO <> 0) and (DIVIDOR <> 0) then
      Result := (DIVIDENDO / DIVIDOR)
    else
      Result := 0;
  except
    Result := 0;
  end;
end;

function infoToInt64(AValor: Variant): Int64;
begin

  try
    Result := AValor;
  except
    Result := 0;
  end;

end;

function fncCopyText(Texto:String; Indice:Integer; Field:Integer=0): variant;
var
  Retorno, RetFields   : String;
  X, Y, XField, YField : Integer;
begin

  // Retorna conteudo string no indice passado como parametro, os parametros são:
  // Texto  = String de valores separado por ";" e ","(o ultimo em caso de chave composta de campos de uma tabela)
  // Indice = Index do conteudo separado por ";"
  // Field  = Index do conteudo separado por "," dentro de outra separação por ";"
  //          Se field=99 retorna o ultimo campo da lista, se field=0 retorna o conteúdo completo conjunto, outro número retorna o valor do indice indicado

  // Inicializando variaveis locais - controle interno a function

  Y         := 0;
  YField    := 0;
  Retorno   := '';
  RetFields := '';

  For X := 1 to Length(Texto) do
  begin

    if (Copy(Texto,X,1)<>';') and (X<=Length(Texto)) then
      Retorno := Retorno + Copy(Texto,X,1);

    if (Copy(Texto,X,1)=';') or (X>=Length(Texto))  then
    begin

      Y := Y + 1;

      if Y = Indice then
      begin

        if Field = 0 then
          Break
        else
        if Field > 0 then
        begin

          RetFields := Retorno;
          Retorno   := '';

          if Field < 99 then
          begin

            For XField := 1 to Length(RetFields) do
            begin

              if (Copy(RetFields,XField,1)<>',') and (XField<=Length(RetFields)) then
                Retorno := Retorno + Copy(RetFields,XField,1);

              if (Copy(RetFields,XField,1)=',') or (XField>=Length(RetFields))  then
              begin

                YField := YField + 1;

                if YField = Field then
                begin

                  Result := Retorno;
                  Texto  := '';
                  Exit;

                end
                else
                  Retorno := '';

              end;

            end;

          end
          else if Field = 99 then
          begin

            For XField := Length(RetFields) downto 1 do
            begin

              if (Copy(RetFields,XField,1)<>',') then
                Retorno := Copy(RetFields,XField,1) + Retorno;

              if (Copy(RetFields,XField,1)=',') or (XField<=1) then
              begin

                Result := Retorno;
                Texto  := '';
                Exit;

              end;

            end;

          end;

        end;


      end
      else
        Retorno := '';

    end;

  end;

  Result := Retorno;

end;

function fncInfoCount(Texto, Separador: String): Integer;
var
  x : integer;
  count : integer;
begin

  // retorna o número de campos (separados por virgula) do texto passado
  count := 0;

  for x := 1 to length(Texto) do
    if Copy(Texto,x,1)=Separador then
      count := count + 1;

  result := Count + 1;

end;

function fncInfoPos(Texto, Conteudo, Separador: String): Integer;
var
  x, p : integer;
  count : integer;
begin

  // retorna o número de campos (separados por virgula) do texto passado
  p := pos(Conteudo,Texto);
  count := 0;

  for x := 1 to p do
    if Copy(Texto,x,1)=Separador then
      count := count + 1;

  result := Count + 1;

end;

function fncAjustaTextoBusca(AValor: string): string;
begin

  Result := StringReplace( AValor, ' ', '%', [rfReplaceAll, rfIgnoreCase]); ;

end;

{
  Função "GetTextHeight" de: 99Coders
  Autor: Heber Stein Mazutti
  Site: http://vip.99coders.com.br/
}

function GetTextHeight(const D: TListItemText; const Width: single; const Text: string): Integer;
var
  Layout: TTextLayout;
begin
  // Create a TTextLayout to measure text dimensions
  Layout := TTextLayoutManager.DefaultTextLayout.Create;
  try
    Layout.BeginUpdate;
    try
      // Initialize layout parameters with those of the drawable
      Layout.Font.Assign(D.Font);
      Layout.VerticalAlign := D.TextVertAlign;
      Layout.HorizontalAlign := D.TextAlign;
      Layout.WordWrap := D.WordWrap;
      Layout.Trimming := D.Trimming;
      Layout.MaxSize := TPointF.Create(Width, TTextLayout.MaxLayoutSize.Y);
      Layout.Text := Text;
    finally
      Layout.EndUpdate;
    end;
    // Get layout height
    Result := Round(Layout.Height);
    // Add one em to the height
    Layout.Text := 'm';
    Result := Result + Round(Layout.Height);
  finally
    Layout.Free;
  end;
end;

Function TiraMascara(lConteudo: String  ): String;
var
 LString:String;
 x:Integer;
begin
 LString := '';
 for x := 1 to Length(lConteudo) do
 begin
   if LConteudo[x] in ['0'..'9'] then
     LString := LString + LConteudo[x];
 end;
 Result := LString;
end;

end.
