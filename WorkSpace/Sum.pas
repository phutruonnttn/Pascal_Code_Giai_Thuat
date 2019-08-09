{$mode objfpc}
program tong_lon_nhat;
uses crt;
const fi='sum.inp';
      fo='sum.out';
var f1,f2: text;
    n,i,j,k,d: byte;
    a: array[1..100,1..100] of integer;
    s: array [1..10000] of longint;
    max: longint;

procedure readf;
begin
    assign(f1,fi); reset(f1);
    readln(f1,n);
    for i:=1 to n do
     for j:=1 to n do
      read(f1,a[i,j]);
    close(f1);
end;

procedure xuli;
begin
    for k:=1 to n do
     begin
        i:=1; j:=k; d:=0; s[k]:=0;
        while (d<>n-k+1) do
         begin
          s[k]:=s[k]+a[i,j];
          i:=i+1; j:=j+1; d:=d+1;
         end;
     end;

    for k:=1 to n do
     begin
        i:=k; j:=1; d:=0; s[n+k]:=0;
        while (d<>n-k+1) do
         begin
             s[n+k]:=s[n+k]+a[i,j];
             i:=i+1; j:=j+1; d:=d+1;
         end;
     end;

    max:=s[1];
    for i:=2 to 2*n do
      if s[i]>max then max:=s[i];
end;

procedure writef;
begin
    assign(f2,fo); rewrite(f2);
    xuli;
    writeln(f2,max);
    close(f2);
end;

begin
    clrscr;
    readf;
    writef;
end.