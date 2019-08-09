{$mode objfpc}
Program May_man;
uses crt;
const fi='Lucky.int'; fo='Lucky.out';
var f1,f2: text;
    n,m,i,j,b: longint;
    found: boolean;
    cay,dat: array [1..100000] of longint;

Function ChinhPhuong( a: longint): boolean;
var x: longint;
begin
    x:=trunc(sqrt(a));
    if sqr(x)=a then exit(true);
    exit(false);
end;

begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n,m);
    for i:=1 to n do readln(f1,cay[i]);
    for i:=1 to m do readln(f1,dat[i]);
    close(f1);
    assign(f2,fo); rewrite(f2);
    for i:=1 to m do
     begin
         found:=true;
         for j:=1 to n do
          begin
             b:=abs(dat[i]-cay[j]);
             if ChinhPhuong(b) then
              begin
                  writeln(f2,1);
                  found:=false;
                  break;
              end;
          end;
         if found then writeln(f2,0);
     end;
    close(f2);
end.