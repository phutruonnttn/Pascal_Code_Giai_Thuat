{$mode objfpc}
Program BT_Mang;
uses crt;
const nmax= 100000;
var a: array[1..nmax] of longint;
n,i,v,vt,t: longint;
begin
    clrscr;
    write('Nhap N: '); readln(n);
    for i:=1 to n do
     begin
         write('Nhap a[',i,']: ');
         readln(a[i]);
     end;
    for i:=1 to n do write(a[i],'  ');
    t:=0;
    for i:=1 to n do
     if a[i] mod 2 <> 0  then t:=t+a[i];
     writeln('Tong cac so le: ',t);
    write('Nhap so v: '); readln(v);
    i:=1;
    a[n+1]:=v;
     while (a[i] <> v) do inc(i);
     if i<=n then write(v,' xuat hien dau tien tai vi tri: ',i) else write(v,' Khong ton tai.');
    readln
end.
