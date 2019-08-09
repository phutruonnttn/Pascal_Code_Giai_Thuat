{$mode objfpc}
Program Oto;
uses crt;
const fi='oto.inp';
      fo='oto.out';
type arr= array[1..10000] of integer;
var f1,f2: text;
    n,td,i: integer;
    t,d: arr;
    ok: boolean;

Procedure readf;
begin
    assign(f1,fi); reset(f1);
    readln(f1,n,td);
    for i:=1to n do
     readln(f1,t[i],d[i]);
    close(f1);
end;

function min1: integer;
begin
    min1:=d[1];
    for i:=1 to n do
     if min1>d[i] then min1:=d[i];
end;

procedure swap(var a,b:longint);
var tg:longint;
begin
    tg:=a;
    a:=b;
    b:=tg;
end;

procedure quicksort(l,r:integer);
var chot,i,j:longint;
begin
    i:=l;j:=r;
    chot:=d[(l+r) div 2];
    repeat
       while d[i]<chot do inc(i);
       while d[j]>chot do dec(j);
       if i<=j then
         begin
           swap(d[i],d[j]);
           swap(t[i],t[j]);
           inc(i);dec(j);
         end;
    until i>j;
    if l<j then quicksort(l,j);
    if i<r then quicksort(i,r);
end;

procedure xuli;
var l,s: longint;
begin
    ok:=true;
    l:=0; s:=0;
    for i:=1 to n do
     l:=l+ t[i];
    if l>td then ok:=false
     else
      begin
       quicksort(1,n);
       for i:=1 to n do
       begin
        s:=s+t[i];
        if s>d[i] then
         begin
             ok:=false;
             break;
         end;
       end;
      end;
end;

procedure writef;
begin
    assign(f2,fo); rewrite(f2);
    xuli;
    if ok then writeln(f2,'1')
     else writeln(f2,'0');
    close(f2);
end;

begin
    clrscr;
    readf;
    writef;
end.
































