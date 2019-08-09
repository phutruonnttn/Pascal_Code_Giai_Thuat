{$mode objfpc}
Program DSEQ;
uses crt;
const fi='DSEQ.inp';
      fo='DSEQ.out';
var n,i,j,l,max,m,d: longint;
    a,b: array[1..100000000] of longint;

Procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do
     read(a[i]);
    close(input);
end;

Procedure xuli1;
var s1,s2,d: longint;
begin
   max:=low(longint); m:=0; d:=0;
   for i:=1 to n do
    for j:=i+1 to n do
     begin
       s1:=0; s2:=0;
       for l:=1 to i do s1:=s1+a[l];
       for l:=j to n do s2:=s2+a[l];
       m:=m+1;
       b[m]:=abs(s1-s2);
       if max<abs(s1-s2) then max:=abs(s1-s2);
     end;
   for i:=1 to m do
     if b[i]=max then d:=d+1;
   write(max,' ',d);
end;

Procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli1;
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.