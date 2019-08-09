{$mode objfpc}
program bai4_5;
uses crt;
const fi='asdf.inp';
      fo='asdf.out';
var n,k,i: byte;
    x: array[1..20] of byte;
    a,s: array[1..15] of longint;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    for i:=1 to n do read(a[i]);
    close(input);
end;

procedure ghinhan;
var i,j: byte; ok: boolean;
begin
    ok:= true;
    for i:=1 to k do s[i]:=0;
    for i:=1 to n do
      s[x[i]]:=s[x[i]]+a[i];
    for i:=1 to k-1 do
      if s[i]<>s[i+1] then ok:= false;
    if ok then
     begin
      for i:=1 to k do
       begin
         write('Nhom ',i,': ');
         for j:=1 to n do
          if x[j]=i then write(a[j],' ');
         writeln;
       end;
      writeln;
     end;
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