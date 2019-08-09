{$mode objfpc}
Program Bai_2;
uses crt;
var n: string;
    i,a,m: byte;
    s:word;
    b: boolean;
begin
    clrscr;
    write('Nhap so nguyen duong n: '); readln(n);
    s:=0; b:=false;
    if n='9' then b:=true
    else
     begin
         for i:=1 to length(n) do
          begin
              val(n[i],a,m);
              s:=s+a;
          end;
         if s=9 then b:=true;
     end;
    if b then write('n la so dep!') else write('n khong phai so dep!');
    readln
end.