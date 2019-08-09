{$mode objfpc}
Program bai2;
uses crt;
var a:array[1..1000] of longint;
    n,i:longint;

procedure readf;
var i:longint;
begin
    write('Nhap n: '); readln(n);
    for i:=1 to n do
      begin
         write('a[',i,']= ');
         readln(a[i]);
      end;
end;

procedure swap(var a,b:longint);
var tg:longint;
begin
    tg:=a;
    a:=b;
    b:=tg;
end;

procedure Noi_bot;
var i,j:longint;
begin
    for i:=1 to n-1 do
      for j:=i+1 to n do
         if a[i]>a[j] then swap(a[i],a[j]);
    for i:=1 to n do write(a[i],' ');

end;

procedure quicksort(l,r:longint);
var chot,i,j:longint;
begin
    i:=l;j:=r;
    chot:=a[(l+r) div 2];
    repeat
       while a[i]<chot do inc(i);
       while a[j]>chot do dec(j);
       if i<=j then
         begin
           swap(a[i],a[j]);
           inc(i);dec(j);
         end;
    until i>j;
    if l<j then quicksort(l,j);
    if i<r then quicksort(i,r);
end;

begin
    clrscr;
    readf;
    quicksort(1,n);
    for i:=1 to n do write(a[i],' ');
    readln
end.
