const fi='found2.inp';
      fo='found2.out';
var n,m,i,j: longint;
    a: array[0..1000000] of longint ;
    x: array[0..1000000] of longint;

function dem(k: longint): longint;
var upper, lower,l,r,mid: longint;
begin
    l:=0; r:=n+1;
    mid:=(l+r) div 2;
    while r-l>1 do
     begin
         if a[mid]>k then r:=mid
          else l:=mid;  mid:=(l+r) div 2;
     end;
    upper:=r;
    l:=0; r:=n+1;
    mid:= (l+r) div 2;
    while r-l>1 do
     begin
         if a[mid]<k then l:=mid
          else r:=mid; mid:=(l+r) div 2;
     end;
    lower:=r;
    dem:=upper-lower;
end;

procedure QuickSort(L,H:longint);
var i,j :longint;
    x,tmp :longint;
begin
  i:=L;
  j:=H;
  //x:=a[random(H-L+1)+L];
  x:=a[(L+H) div 2];
  repeat
    while a[i]<x do inc(i);
    while a[j]>x do dec(j);
    if i<=j then
      begin
        tmp:=a[i];
        a[i]:=a[j];
        a[j]:=tmp;
        inc(i);
        dec(j);
      end;
  until i>j;
  if L<j then QuickSort(L,j);
  if i<H then QuickSort(i,H);
end;

begin
    assign(input,fi); reset(input);
    readln(n,m);
    for i:=1 to n do read(a[i]);
    readln;
    for i:=1 to m do
     readln(x[i]);
    close(input);
    assign(output,fo); rewrite(output);
    quicksort(1,n);
    for i:=1 to m do
     writeln(dem(x[i]));
    close(output);
end.
