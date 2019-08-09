{$mode objfpc}
Program Chuyen_cho_hang_cot;
uses crt;
type T= array[1..1000,1..1000] of longint ;
var a: T;
    n,m: longint;

Procedure Nhapmang;
var i,j: longint;
begin
    Write('Nhap hang: '); readln(n);
    write('Nhap cot: '); readln(m);
    for i:=1 to n do
     for j:=1 to m do
     begin
         write('a[',i,',',j,']= ');
         readln(a[i,j]);
     end;
end;

Procedure Xuatmang;
var i,j: longint;
begin
    for i:=1 to n do
    begin
        for j:=1 to m do write(a[i,j],' ');
        writeln;
    end;
end;

Procedure Chuyen_hang;
var b: T;
    i,j,g,h,tg: longint;
begin
    write('Chuyen cho 2 hang la: '); readln(g,h);
    b:=a;
    for j:=1 to m do
     begin
        tg:=b[g,j];
        b[g,j]:=b[h,j];
        b[h,j]:=tg;
     end;
    for i:=1 to n do
    begin
        for j:=1 to m do write(b[i,j],' ');
        writeln;
    end;
end;

Procedure Chuyen_cot;
var c: T;
    i,j,g,h,tg: longint;
begin
    write('Chuyen cho 2 cot la: '); readln(g,h);
    c:=a;
    for i:=1 to n do
     begin
        tg:=c[i,g];
        c[i,g]:=c[i,h];
        c[i,h]:=tg;
     end;
    for i:=1 to n do
    begin
        for j:=1 to m do write(c[i,j],' ');
        writeln;
    end;
end;

Begin
    clrscr;
    Nhapmang;
    xuatmang;
    chuyen_hang;
    chuyen_cot;
    readln
end.

