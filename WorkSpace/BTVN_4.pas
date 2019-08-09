{$mode objfpc}
program btvn4;
uses crt;
const fi='abc.inp';
      fo='abc.out';
var n,k,i: byte;
    a: array[1..20] of longint;
    x: array[1..1000] of byte;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    for i:=1 to n do readln(a[i]);
    close(input);
end;

procedure ghinhan;
var i,j: integer; ok: boolean;
begin
    ok:= true;
    for i:=1 to n do
      s[x[i]]:=s[x[i]]+a[x[i]];
    for i:=1 to n-1 do
     for j:=i+1 to n do
      if a[i]<>a[j] then ok:= false;
    if ok then write(1)
end;

procedure tryy(i: integer);
var j:integer;
begin
    for j:=1 to k do
     begin
         x[i]:=j;
         if i=n then ghinhan
          else tryy(i+1);
     end;
end;
