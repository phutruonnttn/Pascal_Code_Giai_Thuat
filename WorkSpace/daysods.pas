
var vt:array[1..10000000] of longint;
    a:array[1..1000000] of longint;

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
              swap(vt[i],vt[j]);
              inc(i); dec(j);
          end;
    until i>j;
    if l<j then quicksort(l,j);
    if i<r then quicksort(i,r);
end;

procedure xuly;
var i,j:longint;
begin
    for i:=1to n do vt[i]:=i;
    quicksort(1,n);
    for i:=n downto n-2 do
      write(a[i],' ');
end;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do
     read(a[i]);
    close(input);
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);

end;

BEGIN

END.