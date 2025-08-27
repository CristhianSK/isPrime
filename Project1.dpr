program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function IsPrime(const aNumero: integer): Boolean;
var i : Integer;
begin
  if aNumero <= 1 then begin
   result := False;
   exit;
  end;

  for i := 2 to aNumero -1 do begin
    if (aNumero mod i = 0) then begin
     result:= False;
     Exit;
    end;
  end;

  result := True;



end;


var
  numeros: Integer;
begin
  try

    Writeln('Digite um numeros para verificar se � primo:');
    try
      Readln(numeros);
    except
      WriteLn('Digite apenas n�meros');
      Exit;
    end;

    if isPrime(numeros) then begin
      WriteLn('O n�mero ' +numeros.ToString +' � primo!');
    end else begin
      WriteLn('O n�mero ' +numeros.ToString +' N�O � primo!');
    end;
  Readln(numeros);


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
