{$mode objfpc}
Program Palindrom;
uses crt;
const fi='Palindrom.inp'; fo='Palindrom.out';
var f1,f2: text;
    n,m: integer; i: integer;
    d: integer;

Function KT_Palindrom( a: integer): boolean;
var s,st: string; b: integer;
begin
   s:=''; b:=a;
   while a<>0 do
    begin
       str(a mod 10,st);
       s:=s+st;
       a:=a div 10;
    end;
   val(s,a);
   KT_Palindrom:=(a=b);
end;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n,m);
    close(f1);
    assign(f2,fo); rewrite(f2);
    d:=0;
    for i:=1 to n do
     if KT_Palindrom(i) and (i mod m=0) then d:=d+1;
    writeln(f2,d);
    close(f2);
end.