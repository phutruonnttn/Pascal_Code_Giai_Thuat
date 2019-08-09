{$mode objfpc}
Program Bai4_3;
uses crt;
var a: array[1..1000,1..1000] of longint;
    n,i,j: longint;

Procedure Nhapmatran;
begin
    write('Nhap so hang hoac so cot cua ma tran vuong: '); readln(n);
    for i:=1 to n do
     for j:=1 to n do
     begin
         write('a[',i,',',j,']= ');
         readln(a[i,j]);
     end;
end;

Procedure Xuatmatran;
begin
    for i:=1 to n do
    begin
        for j:=1 to n do write(a[i,j],' ');
        writeln;
    end;
end;

Begin
   clrscr;
   nhapmatran;
   xuatmatran;
   readln
end.