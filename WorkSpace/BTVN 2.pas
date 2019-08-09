{$mode objfpc}
Program BTVN_2;
uses crt;
const nmax=100000; fi='array.inp'; fo='array.out';
var f1,f2: text;
    A:array [1..nmax] of longint;
    n,i,t,v:byte;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    readln(f1,n);
    for i:=1 to n do read(f1,a[i]);
    readln(f1);
    readln(f1,v);
    assign(f2,fo);
    rewrite(f2);
    for i:=1 to n do write(f2,a[i],'  ');
    writeln(f2);
    t:=0;
    for i:=1 to n do
    if a[i] mod 2 <> 0 then t:=t+a[i];
    writeln(f2,'Tong le: ',t);
    i:=1;
    a[n+1]:=v;
    while (a[i]<>v) do inc(i);
    if i<=n then write(f2,v,' xuat hien o vi tri: ',i) else write(f2,v,' Khong xuat hien!');
    close(f1);
    close(f2);
end.