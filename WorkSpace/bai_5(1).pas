{$mode objfpc}
Program Bai5;
uses crt;
var n,i,j,m: integer;
    a,b,x,d: longint;
    ae: array[1..1000000] of longint;

Procedure Top(a: longint);
var d: longint;
begin
    d:=0;
    while d<>a do
     begin
       ae[n+1]:=ae[1];
        for i:=1 to n do
       ae[i]:=ae[i+1];
       d:=d+1;
     end;
end;

Procedure Bottom(b: longint);
var d: longint;
begin
    d:=0;
    while d<>b do
     begin
       for i:=1 to n do
        ae[i+1]:=ae[i];
       ae[1]:=ae[n+1];
       d:=d+1;
     end;
end;

begin
    clrscr;
    write('Nhap n: '); readln(n);
    for i:=1 to n do
     begin
         write('a[',i,']= '); readln(ae[i]);
     end;
    write('Nhap a: '); readln(a);
    write('Nhap b: '); readln(b);
    write('Nhap x: '); readln(x);
    d:=0;
    while d<>x do
     begin
      d:=d+1;
      top(a);
      bottom(b);
     end;
    for i:=1 to n do write(ae[i],' ');
    readln
end.