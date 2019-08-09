{$mode objfpc}
Program Bai_2_C1;
uses crt;
var a: array [1..1000] of longint;
    b,i,n,j: integer;
begin
    clrscr;
    repeat
     clrscr;
     write('Nhap so N ( 0< N <=1000 ): ');readln(n);
    until (n<=1000) and (0<n) ;
    for i:=1 to n do
     begin
         write('Nhap a[',i,']= ');
         readln(a[i]);
     end;
    for i:=2 to n do
    for j:=n downto i do
    if a[j]<=a[j-1] then
    begin
        b:=a[j-1];
        a[j-1]:=a[j];
        a[j]:=b;
    end;
    for i:=1 to n do write(a[i],'  ');
    readln
end.
