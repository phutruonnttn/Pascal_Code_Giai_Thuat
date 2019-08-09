{$mode objfpc}
Program Bai4_2;
uses crt;
var a: array[1..1000,1..1000] of longint;
    n,m: longint;

Procedure Nhapmang;
var i,j: longint;
begin
    Write('Nhap dong: '); readln(n);
    write('Nhap cot: '); readln(m);
    for i:=1 to n do
     for j:=1 to m do
     begin
         write('a[',i,',',j,']= ');
         readln(a[i,j]);
     end;
end;

Procedure Xuatmang;
var i,j: longint;
begin
    for i:=1 to n do
    begin
        for j:=1 to m do write(a[i,j],' ');
        writeln;
    end;
end;

Procedure Tinhtongtungdong;
var b: array[1..1000] of int64;
    i,j: longint;
begin
    for i:=1 to n do b[i]:=0;
    for i:=1 to n do
     begin
         for j:=1 to m do b[i]:=b[i]+a[i,j];
     end;
    for i:=1 to n do writeln('Tong cac phan tu dong ',i,' la: ',b[i]);
end;

Procedure Dongcotonglonnhat;
var b: array[1..1000] of int64;
    i,j,max: longint;
begin
    for i:=1 to n do b[i]:=0;
    for i:=1 to n do
     begin
         for j:=1 to m do b[i]:=b[i]+a[i,j];
     end;
    max:=b[1];
    for i:=2 to n do if max<b[i] then max:=b[i];
    write('Cac dong co gia tri lon nhat la: ');
    for i:=1 to n do if b[i]=max then write(i,'  ');
    writeln
end;

Procedure Tinhtongtungcot;
var b: array[1..1000] of int64;
    i,j: longint;
begin
    for j:=1 to m do b[j]:=0;
    for j:=1 to m do
     begin
         for i:=1 to n do b[j]:=b[j]+a[i,j];
     end;
    for j:=1 to m do writeln('Tong cac phan tu cot ',j,' la: ',b[j]);
end;

Procedure Cotcotonglonnhat;
var b: array[1..1000] of int64;
    i,j,max: longint;
begin
    for j:=1 to m do b[j]:=0;
    for j:=1 to m do
     begin
         for i:=1 to n do b[j]:=b[j]+a[i,j];
     end;
    max:=b[1];
    for j:=2 to m do if max<b[j] then max:=b[j];
    write('Cac cot co gia tri lon nhat la: ');
    for j:=1 to m do if b[j]=max then write(j,'  ');
    writeln
end;

Procedure Phantulonnhatmoidong;
var i,j,max: longint;
begin
    for i:=1 to n do
     begin
         max:=a[i,1];
         for j:=2 to m do
         begin
            if max<a[i,j] then max:=a[i,j];
         end;
         writeln('Phan tu co gia tri lon nhat tren dong ',i,' la: ', max);
     end;
end;

Procedure Phantulonnhatmoicot;
var i,j,max: longint;
begin
    for j:=1 to m do
     begin
         max:=a[1,j];
         for i:=2 to n do
         begin
            if max<a[i,j] then max:=a[i,j];
         end;
         writeln('Phan tu co gia tri lon nhat tren cot ',j,' la: ', max);
     end;
end;

Begin
    clrscr;
    nhapmang;
    xuatmang;
    tinhtongtungdong;
    dongcotonglonnhat;
    tinhtongtungcot;
    cotcotonglonnhat;
    phantulonnhatmoidong;
    phantulonnhatmoicot;
    readln
end.
