{$mode objfpc}
Program Palindrom;
uses crt;
const fi='Palindrom.inp'; fo='Palindrom.out';
var f1,f2: text;
    n,m: integer; i: integer;
    d: integer;

Function KT_Palindrom( a: integer): boolean;
var s: string;
    i,n: integer;
begin
   Str(a,s);
   n:= length(s);
   for i:=1 to (n div 2) do
    if s[i]<>s[n+1-i] then exit(false);
   exit(true);
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