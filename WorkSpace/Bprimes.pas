{$mode objfpc}
Program Cac_so_nguyen_to_co_cung_so_bit_1;
uses crt;
const fi='Bprimes.inp'; fo='Bprimes.out';
var f1,f2: text;
    n,d,i: longint;
    h: byte;
    prime: array[1..1000000000] of byte;

Procedure Timsnt;
var i,j: longint;
begin
   fillchar(prime,sizeof (prime),0);
   prime[1]:=1 ;
   for i:=2 to trunc(sqrt(n)) do
    if prime[i]=0 then
     begin
        j:=i*i;
        while j<=n do
         begin
             prime[j]:=1;
             j:=j+i;
         end;
     end;
end;

Function Bit1( a: longint): boolean;
var b: byte;
begin
    b:=0;
    while a<>0 do
     begin
         if a mod 2 = 1 then inc(b);
         a:=a div 2;
         if b>h then exit(false);
     end;
    if b=h then exit(true) else exit(false);
end;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n,h);
    close(f1);
    assign(f2,fo); rewrite(f2);
    timsnt;
    d:=0;
    for i:=1 to n do
     if (prime[i]=0) then
      begin
         if (bit1(i)) then inc(d);
      end;
    write(f2,d);
    close(f2);
end.
