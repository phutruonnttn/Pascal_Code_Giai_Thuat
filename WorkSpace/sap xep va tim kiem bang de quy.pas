{$mode objfpc}
Program bt;
const fi='sapxepkt.inp';
      fo='sapxepkt.out';
type mang= array [1..10000] of longint;
var f1,f2: text;
    n,k,i: longint;
    a: mang;

procedure readf;
var i: longint;
begin
    assign(f1,fi); reset(f1);
    readln(f1,n,k);
    for i:=1 to n do read(f1,a[i]);
    close(f1);
end;

procedure swap(var a,b: longint);
var c: longint;
begin
    c:=a;
    a:=b;
    b:=c;
end;

procedure quicksort(l,r: longint);
var i,j,chot: longint;
begin
    i:=l; j:=r;
    chot:=a[(l+r) div 2];
    repeat
         while a[i]<chot do inc(i);
         while a[j]>chot do dec(j);
         if i<=j then
          begin
              swap(a[i],a[j]);
              inc(i); dec(j);
          end;
    until i>j;
    if l<j then quicksort(l,j);
    if i<r then quicksort(i,r);
end;

function biraryfind( a: mang; d,c: longint): byte;
var g: longint;
begin
    if d>c then exit(0);
    g:=(d+c) div 2;
    if a[g]=k then exit(1{hoac g de chi vi tri})
     else
      if a[g]>k then biraryfind:=biraryfind(a,d,g-1)
       else biraryfind:=biraryfind(a,g+1,c);
end;

procedure writef;
begin
    assign(f2,fo); rewrite(f2);
    quicksort(1,n);
    for i:=1 to n do write(f2,a[i],' ');
    writeln(f2);
    write(f2,biraryfind(a,1,n));
    close(f2);
end;

begin
    readf;
    writef;
end.
