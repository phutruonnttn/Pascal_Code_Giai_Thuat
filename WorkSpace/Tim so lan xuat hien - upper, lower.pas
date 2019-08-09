const fi='asdfghjkl.inp';
      fo='asdfghjkl.out';
var a: array[1..1000] of longint;
    n,b: longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do read(a[i]);
    readln;
    readln(b);
    close(input);
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

procedure writef;
var i: longint;
begin
   assign(output,fo); rewrite(output);
   quicksort(1,n);
   writeln(upper(b)-lower(b));
   close(output);
end;

begin
    readf;
    writef
end.