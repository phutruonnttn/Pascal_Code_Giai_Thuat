{$mode objfpc}
Program Bai4_1;
uses crt;
var a: array[1..1000,1..1000] of longint;
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

Procedure Solanxuathienso0;
var i,j: longint; l:  byte;
begin
    l:=0;
    for i:=1 to n do
     for j:=1 to m do
      if a[i,j]=0 then l:=l+1;
    writeln('So 0 xuat hien: ',l,' lan');
end;

Procedure Giatrilonnhat;
var i,j,max: longint;
begin
    max:=a[1,1];
    for i:=1 to n do
     for j:=1 to m do
      if max<a[i,j] then max:=a[i,j];
    writeln('Gia tri lon nhat trong mang la: ',max);
end;

begin
    clrscr;
    nhapmang;
    xuatmang;
    solanxuathienso0;
    giatrilonnhat;
    readln
end.
