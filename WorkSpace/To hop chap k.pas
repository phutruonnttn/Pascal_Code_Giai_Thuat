{$mode objfpc}
Program chinh_hop_chap_k;
uses crt;
var n,i,k: integer;
    x: array[0..1000] of integer;

procedure nhap;
begin
    write('Nhap n: '); readln(n);
    write('Nhap k: '); readln(k);
end;

procedure ghinhan;
var i: integer;
begin
    for i:=1 to k do write(x[i],' ');
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

begin
    clrscr;
    nhap;
    x[0]:=0;
    tryy(1);
    readln
end.