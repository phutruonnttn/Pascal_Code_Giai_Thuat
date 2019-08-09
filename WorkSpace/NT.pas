{$mode objfpc}
Program Nghich_the_va_hoan_vi;
uses crt;
const fi='NT.inp'; fo='NT.out';
type mang= array[1..10000000] of longint;
var f1,f2: text;
    a: mang;
    n,i: longint;

Function ViTri(var a: mang; var n:longint; b: longint): longint;
var i: longint;
begin
   for i:=1 to n do
    if a[i]=b then
     begin
         ViTri:=i;
         break;
     end;
end;

Function HoanVi(var a: mang;  b: longint): longint;
var i,d: longint;
begin
    d:=0;
    for i:=1 to ViTri(a,n,b) do
     if a[i]>b then inc(d);
    HoanVi:=d;
end;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    n:=0;
    while not seekeoln(f1) do
     begin
         inc(n);
         read(f1,a[n]);
     end;
    close(f1);
    assign(f2,fo); rewrite(f2);
    for i:=1 to n do
    write(f2,HoanVi(a,i),' ');
    close(f2);
end.
