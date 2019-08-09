{$mode objfpc}
program Xep_viev_1_may;
uses crt;
const fi='cv.inp';
      fo='cv.out';
var a,b: array[1..50] of longint;
    x: array[1..30] of byte;
    n,i: byte;
    t,s,max: longint;

procedure readf;
begin
    assign(input,fi); reset(input);
    n:=0;
    while not seekeof do
     begin
         n:=n+1;;
         read(a[n],b[n]);
     end;
    close(input);
end;

procedure ghinhan;
var i: integer; ok: boolean;
begin
    s:=0; t:=0; ok:= true;
    for i:=1 to n do
     begin
         if x[i]=1 then
          begin
             s:=s+1; t:=t+b[i];
             if s>a[i] then
              begin
                  break;
                  ok:=false;
              end;
          end;
     end;
    if ok then
      if t>=max then max:=t;
    writeln;
end;

procedure tryy(i: integer);
var j:integer;
begin
    for j:=0 to 1 do
     begin
         x[i]:=j;
         if i=n then ghinhan
          else tryy(i+1);
     end;
end;

procedure writef;
begin
    max:=low(longint);
    assign(output,fo); rewrite(output);
    tryy(1);
    writeln(max);
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.