{$mode objfpc}
Program Bai2;
uses crt;
var n,m,k,a1,a2,b1,b2,i,j: integer;
    a: array[1..10000,1..10000] of integer;

begin
    clrscr;
    write('Nhap m: '); readln(m);
    write('Nhap n: '); readln(n);
    k:=0;
    a1:=1; a2:=n;
    b1:=2; b2:=m;
    repeat
     //canh tren cung
     for i:=a1 to a2 do
      begin
          inc(k);
          a[b1-1,i]:=k;
      end;
     dec(a2);
     //canh ben phai
     for i:=b1 to b2 do
      begin
          inc(k);
          a[i,a2+1]:=k;
      end;
     dec(b2);
     //canh duoi
     for i:=a2 downto a1 do
      begin
          inc(k);
          a[b2+1,i]:=k;
      end;
     inc(a1);
     //canh trai
     for i:=b2 downto b1 do
      begin
          inc(k);
          a[i,a1-1]:=k;
      end;
     inc(b1);
    until k>m*n;
    //a[,]:=m*n-1;
    for i:=1 to m do
     begin
         for j:=1 to n do
          write(a[i,j],' ');
         writeln
     end;
    readln
end.
