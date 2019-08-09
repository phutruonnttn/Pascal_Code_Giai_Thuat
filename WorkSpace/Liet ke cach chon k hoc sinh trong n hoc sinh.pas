{$mode objfpc}
Program bai4_1;
uses crt;
const fi='Bai4.1.inp';
      fo='Bai4.1.out';
var n,k,i: byte;
    s: array[1..20] of string;
    x: array[0..20] of byte;
    d: longint;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    for i:=1 to n do readln(s[i]);
    close(input);
    x[0]:=0; d:=0;
end;

procedure ghinhan;
var i: integer;
begin
    d:=d+1; write(d,'. ');
    for i:=1 to k do write(s[x[i]],' ');
    writeln;
end;

procedure tryy(i: integer);
var j:integer;
begin
    for j:=x[i-1]+1 to n-k+i do
     begin
         x[i]:=j;
         if i=k then ghinhan
          else tryy(i+1);
     end;
end;

Procedure writef;
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