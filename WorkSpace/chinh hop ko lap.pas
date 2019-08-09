{$mode objfpc}
Program chinh_hop_ko_lap;
uses crt;
var x: array[1..1000] of longint;
    b: array[1..1000] of byte;
    n,k,d,i: longint;
procedure init;
begin
    write('Nhap n: '); readln(n);
    //write('Nhap k: '); readln(k);
    fillchar(b,sizeof(b),0);
    d:=0;
end;

procedure ghinhan;
begin
    for i:=1 to n do
     write(x[i],' ');
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

begin
    clrscr;
    init;
    chinhhopkl(1);
    readln
end.
