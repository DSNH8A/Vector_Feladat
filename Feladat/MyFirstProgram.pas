unit MyFirstProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.FMTBcd, Data.SqlExpr, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource: TDataSource;
    Term�kek: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery1term�k_id: TAutoIncField;
    ADOQuery1cikksz�m: TIntegerField;
    ADOQuery1megnevez�s: TStringField;
    ADOQuery1�fa_kulcs: TBCDField;
    ADOQuery1elad�si_egys�g�r: TBCDField;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOQuery2: TADOQuery;
    T�telek: TADOConnection;
    DataSource1: TDataSource;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    DBGrid3: TDBGrid;
    ADOQuery5: TADOQuery;
    ADOConnection3: TADOConnection;
    DataSource2: TDataSource;
    Label1: TLabel;
    ADOQuery6: TADOQuery;
    Edit2: TEdit;
    Label2: TLabel;
    ADOQuery7: TADOQuery;
    Label3: TLabel;
    Label10: TEdit;
    ADOQuery8: TADOQuery;
    Edit3: TEdit;
    ADOQuery9: TADOQuery;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    ADOQuery10: TADOQuery;
    Edit5: TEdit;
    Label11: TLabel;
    ADOQuery11: TADOQuery;
    Edit6: TEdit;
    Edit7: TEdit;
    ADOQuery12: TADOQuery;
    Edit8: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBNavigator3: TDBNavigator;
    Edit9: TEdit;
    Label4: TLabel;
    ADOQuery13: TADOQuery;
    DBGrid2: TDBGrid;
    Edit10: TEdit;
    ADOQuery14: TADOQuery;
    Label15: TLabel;
    DBGrid4: TDBGrid;
    ADOQuery15: TADOQuery;
    DataSource3: TDataSource;
    DBNavigator4: TDBNavigator;
    procedure PopulateComboBoxes(Sender: TObject);
    procedure SelectButtonClick(Sender : TObject);
    procedure AssignT�telek(Sender: TObject);
    procedure AssignTerm�k(Sender : TObject);
    procedure AssignPartner(Sender: TObject);
    procedure AssignEngedm�ny(Sender : TObject);
    procedure AssignEgys�g�r(Sender : TObject);
    procedure ChangeEngedm�ny(Sender: TObject);
    procedure AssignMennyis�g(Sender: TObject);
    procedure AssignMegjegyz�s(Sender: TObject);
    procedure AssignPartnerC�m(Sender : TObject);
    procedure CreateT�tel(Sender: TObject);
    procedure Assign�faKulcs(Sender : TObject);
    procedure CalculateNett�(Sender: TObject);
    procedure CalculateBrutt�(Sender : TObject);
    procedure Calculate�rWithKedvezm�ny(Sender : TObject);
    procedure QuitApplication(Sender: TObject);
    procedure ErrorHandling(query : TADOQuery; fieldName : string);
    procedure CreateReport(Sender : TObject);
    procedure CalculateSumSpending(Sender : TObject);
    procedure ConnectToDataBase(Sender : TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    var partner_id : integer;
    var partner : string;
    var term�k : string;
    var term�k_id: integer;
    var mennyis�g : integer;
    var egys�g�r : double;
    var �rWithKedvezm�ny : currency;
    var megjegyz�s : string;
    var engedm�ny :  currency;
    var c�m : string;
    var nett� : currency;
    var brutt� : currency;
    var �fakulcs : currency;
    var adatb�zisN�v : string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.ConnectToDataBase(Sender : TObject);

begin

  var serverName, databaseName, username, password, connectionString, sanyi: string;

  serverName := InputBox('Adatb�zis szerver', 'K�rj�k adja meg az adatb�zis szerver nev�t:', '');

  databaseName := InputBox('AdatB�zis neve', 'K�rj�k adja meg az adatb�zis nev�t:', '');
  adatb�zisN�v := databaseName;

  //username := InputBox('Username', 'Please enter the username:', '');
  //password := InputBox('Password', 'Please enter the password:', '');

  connectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=' + dataBaseName  + ';Data Source=' + ServerName;

  // Display the constructed connection string (for demonstration purposes)
  ShowMessage('Connection string: ' + connectionString);

  //connect and display
  T�telek.ConnectionString := connectionString;
  ADOQuery2.Active := true;
  ADOQuery15.Active := true;

end;

procedure TForm1.Calculate�rWithKedvezm�ny(Sender: TObject);
begin
    if (nett� > 0) and (brutt� > 0) and (engedm�ny > 0) then
      begin
        var kedvezm�nyes�r:= CurrToStr(nett� - (brutt�/ 100 * engedm�ny));
        �rWithKedvezm�ny := nett� - (brutt�/ 100 * engedm�ny);
        Edit8.Text := kedvezm�nyes�r;
      end
end;

procedure TForm1.CalculateBrutt�(Sender: TObject);
begin
    if(egys�g�r > 0) and (mennyis�g > 0) then
      begin
        brutt� :=  egys�g�r * mennyis�g;
        Edit7.Text := CurrToStr(brutt�);
      end
end;

procedure TForm1.CalculateNett�(Sender: TObject);
begin
    if (egys�g�r > 0) and (mennyis�g > 0) and (�fakulcs > 0) then
      begin
        nett� := (egys�g�r * mennyis�g) - ((egys�g�r * mennyis�g) / 100 * �fakulcs);
        Edit6.Text := CurrToStr(nett�);
      end
end;

procedure TForm1.Assign�faKulcs(Sender: TObject);
begin
    ADOQuery12.SQL.Text := 'SELECT �fa_kulcs FROM Vector.production.Term�kek WHERE term�k_id = :term�kID';
    ADOQuery12.Parameters.ParamByName('term�kID').Value := term�k_id;

    ADOQuery12.Open;
    //
      ErrorHandling(ADOQuery12, '�fa_kulcs');
      �fakulcs := StrToCurr(ADOQuery12.FieldByName('�fa_kulcs').AsString);
    //
    ADOQuery12.Close;
end;

procedure TForm1.AssignPartnerC�m(Sender : TObject);
begin
    ADOQuery11.SQL.Text := 'SELECT [ir�ny�t�sz�m], [utca], [h�zsz�m] FROM Vector.production.Partnerek WHERE partner_id = :partnerID';
    ADOQuery11.Parameters.ParamByName('partnerID').Value := partner_id;

    ADOQuery11.Open;
    //
      ErrorHandling(ADOQuery11, 'ir�ny�t�sz�m');
      ErrorHandling(ADOQuery11, 'utca');
      ErrorHandling(ADOQuery11, 'h�zsz�m');
      Edit5.Text := ADOQuery11.FieldByName('ir�ny�t�sz�m').AsString + '.' + ' '
      + ADOQuery11.FieldByName('utca').AsString  + ' ' + 'utca' + '.' + ' ' + ADOQuery11.FieldByName('h�zsz�m').AsString + '.';
    //
    ADOQuery11.Close;

    Edit5.Enabled := false;
end;

procedure TForm1.AssignEgys�g�r(Sender : TObject);
begin
    ADOQuery9.SQL.Text := 'SELECT elad�si_egys�g�r FROM Vector.production.Term�kek WHERE term�k_id = :term�kID';
    ADOQuery9.Parameters.ParamByName('term�kID').Value := term�k_id;

    ADOQuery9.Open;
    //
      ErrorHandling(ADOQuery9, 'elad�si_egys�g�r');
      var elad�si_egys�g�r : currency := StrToCurr(ADOQuery9.FieldByName('elad�si_egys�g�r').AsString);
      Edit3.Text := CurrToStr(elad�si_egys�g�r);
    //
    ADOQuery9.Close;

    egys�g�r := StrToCurr(Edit3.Text);
    Edit3.Enabled := false;
end;

procedure TForm1.AssignEngedm�ny(Sender: TObject);
begin
    ADOQuery8.SQL.Text := 'SELECT engedm�ny FROM Vector.production.Partnerek WHERE partner_id = :partnerID';
    ADOQuery8.Parameters.ParamByName('partnerID').Value := partner_id;

    ADOQuery8.Open;
    //
      ErrorHandling(ADOQuery8, 'engedm�ny');
         var value : TField := ADOQUery8.FieldByName('engedm�ny');
      if value.IsNull then
      begin
          Label10.Text :='0';
      end
      else
      Label10.Text := ADOQuery8.FieldByName('engedm�ny').AsString;

    //
    ADOQuery8.Close;

    engedm�ny := StrToCurr(Label10.Text);

end;

procedure TForm1.AssignMegjegyz�s(Sender: TObject);
begin
    megjegyz�s := Memo1.Text;
end;

procedure TForm1.AssignMennyis�g(Sender: TObject);
begin
    if Edit4.Text = '' then
      mennyis�g := 0
    else
      mennyis�g := StrToInt(Edit4.Text);

    //calculate new netto and brutto
    CalculateBrutt�(Sender);
    CalculateNett�(Sender);
    Calculate�rWithKedvezm�ny(Sender);
end;

procedure TForm1.ChangeEngedm�ny(Sender : TObject);
begin
    if Label10.Text = '' then
      engedm�ny := 0
    else
      engedm�ny := StrToInt(Label10.Text);

    //calculate new netto and brutto
    CalculateBrutt�(Sender);
    CalculateNett�(Sender);
    Calculate�rWithKedvezm�ny(Sender);
end;

procedure TForm1.CreateT�tel(Sender: TObject);
begin
    ADOQuery10.SQL.Text := 'INSERT INTO Vector.production.T�telek(partner_id, partner_n�v, term�k, mennyis�g, egys�g�r, engedm�ny, megjegyz�s, term�k_id, netto_forgamli_�rt�k) Values(:partner_id, :partner_n�v, :term�k, :mennyis�g, :egys�g�r, :engedm�ny, :megjegyz�s, :term�k_id, :netto_forgamli_�rt�k)';

    if  (partner_id = 0) or (partner = '') or (term�k = '') or (mennyis�g = 0)
    or (egys�g�r = 0) or(engedm�ny = 0) or (megjegyz�s = '') or (term�k_id = 0)
    then
        begin
          ShowMessage('T�ltse ki az �sszes beviteli adatot.');
        end
    else
        begin
            ADOQuery10.Parameters.ParamByName('partner_id').Value := partner_id;
            ADOQuery10.Parameters.ParamByName('partner_n�v').Value := partner;
            ADOQuery10.Parameters.ParamByName('term�k').Value := term�k;
            ADOQuery10.Parameters.ParamByName('mennyis�g').Value := mennyis�g;
            ADOQuery10.Parameters.ParamByName('egys�g�r').Value := egys�g�r;
            ADOQuery10.Parameters.ParamByName('engedm�ny').Value := CurrToStr(engedm�ny);
            ADOQuery10.Parameters.ParamByName('megjegyz�s').Value := megjegyz�s;
            ADOQuery10.Parameters.ParamByName('term�k_id').Value := term�k_id;
            var curr : currency :=  mennyis�g * egys�g�r - (mennyis�g * egys�g�r / 100 * �fakulcs);
            ADOQuery10.Parameters.ParamByName('netto_forgamli_�rt�k').Value := CurrToStr(curr);
        end;

     try
      ADOQuery10.ExecSQL;
      ShowMessage('Adatok felv�tele sikeres volt.');
    except
      on E: Exception do
        ShowMessage('Adatok felv�tele nem siker�lt: ' + E.Message);
    end;

   ADOQuery10.SQL.Text := 'SELECT * FROM Vector.production.T�telek';
   ADOQuery10.ExecSQL;

   ADOQuery2.Open;
   CreateReport(Sender);
   AssignT�telek(Sender);

end;

procedure TForm1.AssignPartner(Sender: TObject);
begin
     var partner_id : string;
     ADOQuery7.SQL.Text := 'SELECT partner_id FROM Vector.production.Partnerek WHERE n�v = :partnerName';
     ADOQuery7.Parameters.ParamByName('partnerName').Value := ComboBox2.Text;

     ADOQuery7.Open;
     //
       ErrorHandling(ADOQuery7, 'partner_id');
       if not ADOQuery7.Eof then
        partner_id := ADOQuery7.FieldByName('partner_id').AsString
       else
        partner_id := 'Nincs ilyen partner.';

     //
     ADOQuery7.Close;

     Form1.partner_id := partner_id.ToInteger();
     Edit2.Text := partner_id;
     partner := ComboBox2.Text;
     //ENGEDM�NY

    AssignEngedm�ny(Sender);
    AssignPartnerC�m(Sender);
    CalculateSumSpending(Sender);
    CreateReport(Sender);

    if term�k <> '' then
    begin
         CalculateBrutt�(Sender);
         CalculateNett�(Sender);
         Calculate�rWithKedvezm�ny(Sender);

    end;

end;

procedure TForm1.AssignTerm�k(Sender : TObject);
begin
    var term�k_id: string;

    ADOQuery6.SQL.Text := 'SELECT term�k_id FROM Vector.production.Term�kek WHERE megnevez�s = :productName';
    ADOQuery6.Parameters.ParamByName('productName').Value := ComboBox1.Text;

    ADOQuery6.Open;
    //
    ErrorHandling(ADOQuery6, 'term�k_id');
    if not ADOQuery6.Eof then
      term�k_id := ADOQuery6.FieldByName('term�k_id').AsString
    else
      term�k_id := 'No partner found';
    //
    ADOQuery6.Close;

    Form1.term�k_id := term�k_id.ToInteger();
    term�k := ComboBox1.Text;
    Edit1.Text := term�k_id;

    Assign�faKulcs(Sender);
    AssignEgys�g�r(Sender);
    Edit4.Text := IntToStr(1);

    if partner <> '' then
    begin
         CalculateBrutt�(Sender);
         CalculateNett�(Sender);
         Calculate�rWithKedvezm�ny(Sender);
    end;

end;

procedure TForm1.PopulateComboBoxes(Sender: TObject);
begin

    ConnectToDataBase(Sender);
    Form1.ADOQuery3.SQL.Text := 'SELECT megnevez�s FROM ' + adatb�zisN�v + '.production.Term�kek';
    Form1.ADOQuery3.Open;
    //
    while not Form1.ADOQuery3.EOF do
    begin
      Form1.ComboBox1.Items.Add(Form1.ADOQuery3.FieldByName('megnevez�s').AsString);
      Form1.ADOQuery3.Next;
    end;
    //
    Form1.ADOQuery3.Close;

    Form1.ADOQuery4.SQL.Text := 'SELECT n�v FROM ' + adatb�zisN�v + '.production.Partnerek';
    Form1.ADOQuery4.Open;
    //
    while not Form1.ADOQuery4.EOF do
    begin
      Form1.ComboBox2.Items.Add(Form1.ADOQuery4.FieldByName('n�v').AsString);
      Form1.ADOQuery4.Next;
    end;
    //
    Form1.ADOQuery4.Close;

    CalculateSumSpending(Sender);

end;

procedure TForm1.AssignT�telek(Sender: TObject);
begin
    ADOQuery15.SQL.Text := 'SELECT * FROM ' + adatb�zisN�v + '.production.T�telek';
    if not ADOQuery15.Eof then
      begin
        ADOQuery15.Open;
        ADOQuery15.Close;
      end
  else
    ShowMessage('T�telek t�bl�zatot nem  siker�lt bet�lteni.');

    ADOQuery15.Open;
end;

 procedure TForm1.CreateReport(Sender: TObject);
 begin
      ADOQuery2.SQL.Text := 'SELECT * FROM ' + adatb�zisN�v + '.production.T�telek WHERE partner_id = :partnerID';
      ADOQuery2.Parameters.ParamByName('partnerID').Value := partner_id;

      var sum : currency := 0;
      var �fa : currency := 0 ;
      var valueWith�fa : currency;
      var sumNett� : currency := 0;
      var netto : currency := 0;
      var currentValue : currency := 0;

      ADOQuery2.Open;
      //
        try
        while not ADOQuery2.Eof do
            begin
              //assign term�k
              ADOQuery13.SQL.Text := 'SELECT �fa_kulcs FROM ' + adatb�zisN�v +  '.production.Term�kek WHERE term�k_id = :term�kID';
              ADOQuery13.Parameters.ParamByName('term�kID').Value := ADOQuery2.FieldByName('term�k_id').Value;

              //assign �fa
              ADOQuery13.Open;
              �fa := ADOQuery13.FieldByName('�fa_kulcs').Value;
              ADOQuery13.Close;

              //calculate sum
              sum := sum + ADOQuery2.FieldByName('egys�g�r').Value * ADOQuery2.FieldByName('mennyis�g').Value;

              //netto forgalmi �rt�k
              currentValue :=  ADOQuery2.FieldByName('mennyis�g').Value *
              ADOQuery2.FieldByName('egys�g�r').Value -
              ( (ADOQuery2.FieldByName('mennyis�g').Value *ADOQuery2.FieldByName('egys�g�r').Value) /100 * �fa);

              sumNett� := sumNett�  + currentValue;

              ADOQuery2.Next;

            end;

        finally
          // Do something with the collected values
          Edit9.Text := CurrToStr(sumNett�);

          //calculate spending of all clients
          CalculateSumSpending(Sender);

        end;
      //
      ADOQuery2.Close;

      ADOQuery2.Open;

 end;

 procedure TForm1.CalculateSumSpending(Sender: TObject);
 begin
    ADOQuery14.SQL.Text := 'SELECT netto_forgamli_�rt�k FROM ' + adatb�zisN�v + '.production.T�telek';

    var sum : currency := 0;

        ADOQuery14.Open;
        //
        ErrorHandling(ADOQuery14, 'netto_forgamli_�rt�k');
        while not ADOQuery14.Eof do
        begin

            sum := sum + ADOQuery14.FieldByName('netto_forgamli_�rt�k').Value;
            ADOQuery14.Next;
        end;
        //
        ADOQuery14.Close;

        Edit10.Text := CurrToStr(sum);

 end;

procedure TForm1.ErrorHandling(query : TADOQuery; fieldName : string);
begin
    query.Open;
      if query.Eof then
        begin
          ShowMessage('Nincsen ilyen rekord.');
          Exit;
        end;
    try
      var queryValue : string := query.FieldByName(fieldName).AsString
    except
      on E: Exception do
      begin
        ShowMessage('Hiba l�pett fel a ${fieldName} mez� keres�se k�zben.');
        Exit
      end;
    end;
end;

procedure TForm1.SelectButtonClick(Sender: TObject);
begin
          
    //refresh data
    ADOQuery2.Open;
    ADOQuery2.Close;
end;

procedure TForm1.QuitApplication(Sender: TObject);
begin
    Application.Terminate();
end;

end.
