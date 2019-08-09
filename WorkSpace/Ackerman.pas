{$mode objfpc}
program ackerman;
uses crt;
const fi='ackerman.inp';
      fo='ackerman.out';
var m,n: integer;
    a: array[0..10000,0..10000] of longint;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(m,n);
    close(input);
end;

{function ackerman(m,n: integer): int64;
begin
    if m=0 then ackerman:=n+1
     else if n=0 then ackerman:=ackerman(m-1,1)
      else ackerman:=ackerman(m-1,ackerman(m,n-1));
end; }

function tinh(m,n: integer): longint;
var tg: longint;
begin
    if a[m,n]=-1 then
     begin
         if m=0 then tinh:=n+1;
         if (n=0) and (m>0) then tinh:=tinh(m-1,1);
         if (m>0) and (n>0) then
          begin
              tg:= tinh(m,n-1);
              tinh:=tinh(m-1,tg);
          end;
     end;
end;

procedure xuli;
begin
    fillchar(a,sizeof(a),255);
    writeln(tinh(m,n));
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    clrscr;
    readf;
    writef
end.
