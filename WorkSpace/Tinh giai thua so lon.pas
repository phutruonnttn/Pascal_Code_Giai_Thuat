{$H+}
{$mode objfpc}
Program Tinh_giai_thua;
uses crt;
const fi='Giaithua.inp'; fo='Giaithua.out';
var i:longint;
    n:longint; p:ansistring;
    f1,f2: text;

Function Mul1(a:ansistring;b:longint): ansistring;
var c,tamp: ansistring;
    s,nho,i: longint;
Begin
    c:=''; nho:=0;
    for i:=length(a) downto 1 do
     begin
         s:=(ord(a[i])-48)*b+nho;
         nho:=s div 10;
         c:=chr(s mod 10 +48) +c;
     end;
    if nho>0 then str(nho,tamp)
     else tamp:='' ;
    c:=tamp+c ;
    mul1:=c;
end;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n); close(f1);
    assign(f2,fo); rewrite(f2);
    p:='1';
    for i:=2 to n do
      p:=mul1(p,i);
    writeln(f2,p);
    close(f2);
end.
