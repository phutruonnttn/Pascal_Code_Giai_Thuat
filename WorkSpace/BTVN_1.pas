{$mode objfpc}
program btvn1;
uses crt;
const fi='HS.inp';
      fo='HS.out';
var n,k,i: byte;
    a: array[1..20] of string;
    x: array[1..20] of byte;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    for i:=1 to n do
     readln(a[i]);
end;

procedure ghinhan;
var i,d: integer;
begin
    d:=0;
    for i:=1 to n do
     if x[i]=1 then d:=d+1;
    if d=k then
     begin
       for i:=1 to n do
        if x[i]=1 then write(a[i],' ');
        writeln;
     end;
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
    assign(output,fo); rewrite(output);
    tryy(1);
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.