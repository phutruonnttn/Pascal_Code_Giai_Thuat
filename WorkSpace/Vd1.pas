{$mode objfpc}
Program BT3;
uses crt;
var n,i: integer;
    x: array[1..1000] of integer;

procedure ghinhan;
var i,s,d: integer; ok: boolean;
begin
    ok:= true; s:=0;
    for i:=1 to n do
      s:=s+x[i];
    if s<>n then ok:=false;
    if ok then
     begin
        for i:=1 to n-1 do
         if x[i]>x[i+1] then ok:= false;
     end;
    if ok then
     begin
         write(n,' = ');
         for i:=n downto 1 do
          if x[i]<>0 then
           begin
              d:=i;
              break;
           end;
         for i:=1 to d-1 do
          if x[i]<>0 then write(x[i],' + ');
         write(x[d]);
         writeln;
     end;
end;

procedure tryy(i: integer);
var j:integer;
begin
    for j:=n downto 0 do
     begin
         x[i]:=j;
         if i=n then ghinhan
          else tryy(i+1);
     end;
end;

begin
    clrscr;
    write('Nhap n: '); readln(n);
    tryy(1);
    readln
end.
