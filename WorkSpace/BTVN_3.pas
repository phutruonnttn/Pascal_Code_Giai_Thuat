{$mode objfpc}
program btvn3;
uses crt;
const fi='AB.inp';
      fo='AB.out';
var n,i: byte;
    x: array[1..250] of byte;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n);
    close(input);
end;

procedure ghinhan;
var i: integer; ok: boolean;
begin
    ok:= true;
    for i:=1 to n do
     if (x[i]=x[i+1]) and (x[i]=1) then ok:= false;
    if ok then
     begin
        for i:=1 to n do
         begin
             if x[i]=0 then write('A')
              else write('B');
         end;
         writeln;
     end;
end;

procedure tryy(i: integer);
var j: integer;
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