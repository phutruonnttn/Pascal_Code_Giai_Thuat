{$mode objfpc}
Program Do_cao_so_nguyen_to;
uses crt;
const fi='hprimes.inp';
      fo='hprimes.out';
var f1,f2: text;
    n,i,d: longint;
    h: byte;
    prime: array[1..1000000] of byte;
//--------------------------------
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
//-------------------------------
Function Docao( a: longint): boolean;
var b: byte;
begin
   b:=0;
   while a<>0 do
    begin
        b:=b+(a mod 10);
        a:=a div 10;
        if b>h then exit(false);
    end;
   if b=h then exit(true) else exit(false);
end;
//-------------------------------
Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n,h);
    close(f1);
    assign(f2,fo); rewrite(f2);
    timsnt;
    d:=0;
    for i:=1 to n do
     if prime[i]=0 then
      if docao(i) then
       begin
           writeln(f2,i);
           inc(d);
       end;
   writeln(f2,d);
   close(f2);
end.
