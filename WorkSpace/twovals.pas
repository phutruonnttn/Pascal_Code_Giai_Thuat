{$mode objfpc}
program Hai_gia_tri;
const fi='twovals.inp';
      fo='twovals.out';
var n: longint;
    a,f: array[0..1000005] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do read(a[i]);
    close(input);
end;

function ktra(b,c: longint): boolean;
var i,m,n: longint; ok: boolean;
begin
   ok:= true;
   for i:=b to c do
    if (a[i]<>a[i+1]) and (i+1<=c) then ok:=false;
   if ok then exit(false);
   for i:=b to c do
    if (a[i]<>a[i+1]) and (i+1<=c) then
     begin
         m:=a[i];
         n:=a[i+1];
     end;
   for i:=b to c do
    if (a[i]<>m) and (a[i]<>n) then exit(false);
   exit(true);
end;

procedure xuli;
var i,j,d,maxb: longint;
begin
   if n=0 then writeln(0)
   else
   begin
   d:=0;
   for i:=1 to n-1 do
    for j:=i+1 to n do
     begin
       if ktra(i,j) then
        begin
            d:=d+1;
            f[d]:=j-i+1;
        end;
     end;
   maxb:=f[1];
   for i:=2 to d do
    if f[i]>maxb then maxb:=f[i];
   writeln(maxb);
   end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    readf;
    writef
end.
