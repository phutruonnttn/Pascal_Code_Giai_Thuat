{$mode objfpc}
program btvn2;
uses crt;
const fi='HVS.inp';
      fo='HVS.out';
var n,i: byte;
    s: string;
    x,b: array[1..20] of byte;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(s);
    close(input);
    fillchar(b,sizeof(b),0);
    n:=length(s);
end;

procedure ghinhan;
begin
    for i:=1 to n do
     write(s[x[i]]);
     writeln;
end;

procedure chinhhopkl(i: integer);
var j: integer;
begin
   for j:=1 to n do
    if b[j]=0 then
     begin
         x[i]:=j;
         b[j]:=1;
         if i=n then ghinhan
          else chinhhopkl(i+1);
         b[j]:=0;
     end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    chinhhopkl(1);
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.