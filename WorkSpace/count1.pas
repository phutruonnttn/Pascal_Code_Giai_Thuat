uses crt;
const fi='count.inp';
      fo='count.out';
var a:array[1..100,1..100] of longint;
    m,n,i,j,d:longint;
begin
   assign(input,fi);reset(input);
   readln(m,n);
   for i:=1 to m do
    begin
     for j:=1 to n do
     readln(a[i,j]);
    end;
   close(input);
   d:=0;
   for i:=1 to m do
    for j:=1 to n do
     if a[i,j]=0 then d:=d+1;
   assign(output,fo);rewrite(output);
   write(d);
   close(output);
end.



