{$mode objfpc}
Program phan_tich_so;
uses crt;
var n: integer;
    x,t: array[0..1000] of integer;

procedure writeCH( k: integer);
var i: integer;
begin
    for i:=1 to k-1 do write(x[i],' +  ');
    writeln(x[k]);
end;

procedure Tryy(i: integer);
var j: integer;
begin
    for j:=x[i-1] to (n-T[i-1]) div 2 do
     begin
        x[i]:=j;
        T[i]:=T[i-1]+j;
        tryy(i+1);
     end;
    x[i]:=n-T[i-1];
    writeCH(i);
end;

begin
    clrscr;
    write('Nhap n: '); readln(n);
    x[0]:=0;
    t[0]:=0;
    tryy(1);
end.