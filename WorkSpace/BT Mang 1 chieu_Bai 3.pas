{$mode objfpc}
Program Bai3;
uses crt;
const fi='TDOAN.INP'; fo='TDOAN.OUT';
var f1,f2: text;
    a: array[1..10000] of longint;
    n,k,l,s,i,j,min,m:longint;found:boolean;
begin
    clrscr;
    assign(f1,fi); reset(f1);
    read(f1,n,k);
    readln(f1);
    for i:=1 to n do read(f1,a[i]);
    close(f1);
    assign(f2,fo); rewrite(f2);
    l:=0;s:=0;min:=100000;found:=false;
    for i:=1 to n do
     for j:=i to n do
     begin
         l:=l+1;
         s:=s+a[j];
         if s=k then
         begin
            if l<min then
            begin
            min:=l;m:=i;
            end;
            found:=true;
            l:=0;s:=0;
            break;
         end;
         if (j=n) and (s<>k) then
         begin
             l:=0;s:=0;
             break;
         end;
     end;
    if found then write(f2,m,' ',min) else write(f2,'0 0');
    close(f2);
end.
