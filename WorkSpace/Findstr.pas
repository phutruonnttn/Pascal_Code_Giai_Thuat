{$mode objfpc}
Program Hoan_vi_xau;
uses crt;
const fi='Findstr.inp'; fo='Findstr.out';
var f1,f2: text;
    n,k: integer;
    s: ansistring;
    hv: array[1..500] of ansistring;

Procedure Tao_xau_hv;
var i: integer;
begin
    s:=s+s;
    for i:=1 to n do
     hv[i]:=copy(s,i,n);
end;

Procedure Hoan_vi(var a,b: ansistring);
var d: ansistring;
begin
   d:=a;
   a:=b;
   b:=d;
end;

Procedure Sap_xep;
var i,j: integer;
begin
    for i:=1 to n-1 do
     for j:=i+1 to n do
      if hv[i]>hv[j] then Hoan_vi(hv[i],hv[j]);
end;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n,k);
    readln(f1,s);
    close(f1);
    assign(f2,fo); rewrite(f2);
    Tao_xau_hv;
    Sap_xep;
    writeln(f2,hv[k]);
    close(f2);
end.
