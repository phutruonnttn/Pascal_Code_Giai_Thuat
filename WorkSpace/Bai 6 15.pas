{$mode objfpc}
Program Bai6_15;
uses crt;
type mt= array[1..50,1..50] of integer;
var a: mt;
    c,h,i,j,m,n: integer;

Procedure NhapMT;
begin
    write('Nhap hang: '); readln(m);
    write('Nhap cot: '); readln(n);
    for h:=1 to m do
     for c:=1 to n do
      begin
          write('Nhap a[',h,',',c,']= ');
          readln(a[h,c]);
      end;
end;

Procedure XuatMT;
Begin
   for h:=1 to m do
    begin
        for c:=1 to n do write(a[h,c],' ');
        writeln
    end;
   writeln
end;

Procedure Swap(a,b: integer);
var g:integer;
begin
    g:=a;
    a:=b;
    b:=g;
end;

Procedure Swapline;
var g: integer;
Begin
    write('Doi cho hang: '); readln(i,j);
    for c:=1 to n do
     begin
      g:=a[i,c];
      a[i,c]:=a[j,c];
      a[j,c]:=g;
     end;
end;

Procedure VietMTdadoihang;
var g: integer;
begin
   swapline;
   writeln('Ma tran da duoc doi cho hang: ');
   XuatMT;
   for c:=1 to n do
     begin
      g:=a[i,c];
      a[i,c]:=a[j,c];
      a[j,c]:=g;
     end;
end;

Procedure Swapcol;
var g: integer;
begin
   write('Doi cho cot: '); readln(i,j);
    for c:=1 to n do
     begin
      g:=a[c,i];
      a[c,i]:=a[c,j];
      a[c,j]:=g;
     end;
end;

Procedure VietMTdadoicot;
begin
   swapcol;
   writeln('Ma tran da duoc doi cho cot: ');
   XuatMT;
end;

Begin
    clrscr;
    NhapMT;
    XuatMT;
    VietMTdadoihang;
    VietMTdadoicot;
    readln
end.
