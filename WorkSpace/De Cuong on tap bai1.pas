{$mode objfpc}
Program Bai_1;
uses crt;
const fi='POLY.INP'; fo='POLY.OUT';
      nmax= 10000;
var a:array[0..nmax] of longint;
    n:byte; x,i:integer; s: extended;
    f1,f2: text;
begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n); readln(f1,x);
    for i:=0 to n do read(a[i]);
    close(f1);
    assign(f2,fo); rewrite(f2);
    s:=0;
    for i:=0 to n do
    s:=s+(a[i]*(exp((n-i)*ln(x))));
    writeln(f2,s);
    close(f2);
end.
