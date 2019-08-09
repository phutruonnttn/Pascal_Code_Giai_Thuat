{$mode objfpc}
Program Bai_1;
uses crt;
var n: integer;
    s,i,a: byte;
begin
    clrscr;
    write('Nhap so n  bat ki: '); readln(n);
    s:=0; i:=0;
    while n<>0 do
     begin
         a:=n mod 10;
         s:=s+a;
         inc(i);
         n:=n div 10;
     end;
    writeln('Tong cac chu so cua n la:  ',s);
    writeln('So cac chu so cua n la: ',i);
    readln
end.