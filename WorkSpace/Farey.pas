{$mode objfpc}
Program Farey;
uses crt;
const fi='farey.inp';
      fo='farey.out';
var f1,f2: text;
    n: integer;

Function Ucln(a,b: integer): integer;
var r: integer;
Begin
   while b>0 do
    begin
        r:=a mod b;
        a:=b;
        b:=r;
    end;
   Ucln:=a;
end;

Procedure RutGon(a,b: integer; var t,m: integer);
var i: integer;
begin
    i:=ucln(a,b);
    t:=a div i;
    m:=b div i;
end;

Function KiemTra(n: integer; var t,m: integer): boolean;
var a,b,x,y: integer;
begin
    if (t+m=2) then exit(false);
    a:=1; b:=1;
    for y:=2 to n do
     begin
         x:=t*y div m+1;
         if a*y>b*x then
          begin
              a:=x;
              b:=y;
          end;
     end;
    RutGon(a,b,t,m); exit(true);
end;

Procedure XuLi(n: integer);
var t,m,d,x,y: integer;
begin
    d:=0; t:=0; m:=1;
    x:=t;y:=m;
    repeat
     inc(d);
    until not KiemTra(n,x,y);
    writeln(f2,d);
    repeat
     writeln(f2,t,' ',m);
    until not KiemTra(n,t,m);
end;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n);
    close(f1);
    assign(f2,fo); rewrite(f2);
    Xuli(n);
    close(f2);
end.
