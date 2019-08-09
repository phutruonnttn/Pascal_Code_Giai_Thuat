{$mode objfpc}
Program Hoc_sinh;
uses crt;
const fi='hs.inp';
      fo='hs.out';
var n,i,k: integer;
    x: array[1..1000] of integer;
    y: array[1..10] of string;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    for i:=1 to n do
     readln(y[i]);
end;

procedure ghinhan;
var i: integer;
begin
    for i:=1 to k do
     begin
         if x[i]=1 then write(y[i],' ');
     end;
    writeln;
end;

procedure tryy(i: integer);
var j:integer;
begin
    for j:=0 to 1 do
     begin
         x[i]:=j;
         if i=k then ghinhan
          else tryy(i+1);
     end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    tryy(1);
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.
