

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



function upper(x: longint): longint;
var l,r,mid :longint;
begin
    l:=0; r:=n+1;
    mid:=(l+r) div 2;
    while (r-l>1) do
     begin
         if (a[mid]>x) then r:=mid
          else l:=mid;
         mid:=(l+r) div 2;
     end;
    exit(r);
end;



function lower(x: longint): longint;
var l,r,mid :longint;
begin
    l:=0; r:=n+1;
    mid:=(l+r) div 2;
    while (r-l>1) do
     begin
         if (a[mid]<x) then l:=mid
          else r:=mid;
         mid:=(l+r) div 2;
     end;
    exit(r);
end;


// Tim so lan xuat hien cua 1 so x trong mang la: upper(x) - lower(x)







