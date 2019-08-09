{$mode objfpc}
Program Tim_so_uoc_va_tong_cac_uoc_cua_n_giai_thua;
uses crt;
var n,i,j,d: integer;
    prime,a: array[1..10000000] of integer;
    c,t,s,k: ansistring;

procedure Chuanhoa(var a,b: ansistring);
begin
    while length(a) < length(b) do a:='0'+a;
    while length(a) > length(b) do b:='0'+b;
end;

function SoMu(a,n: longint): integer;
var b,s: integer;
begin
    b:=a; s:=0;
    repeat
     s:=s+trunc(n/b);
     b:=b*a;
    until trunc(n/b)=0;
    SoMu:=s;
end;

Function add(a,b: ansistring): ansistring;
var c: ansistring;
    nho,s,x,y,i: longint;
begin
   c:=''; nho:=0;
   chuanhoa(a,b);
   for i:=length(a) downto 1 do
    begin
        x:=ord(a[i])-48;
        y:=ord(b[i])-48;
        s:=x+y+nho;
        nho:=s div 10;
        c:=chr(s mod 10 +48) +c;
    end;
   if nho>0 then c:='1'+c;
   add:=c;
end;

Procedure Bieudiensnt;

Procedure Timsnt;
var i,j: longint;
begin
   fillchar(prime,sizeof(prime),0);
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

Begin
    Timsnt;
    j:=0;
    for i:=2 to n do
     if prime[i]=0 then
      Begin
       inc(j);
       a[j]:= somu(i,n);
      end;
end;

Function Mul1(a:ansistring;b:longint): ansistring;
var c,tamp: ansistring;
    s,nho,i: longint;
Begin
    c:=''; nho:=0;
    for i:=length(a) downto 1 do
     begin
         s:=(ord(a[i])-48)*b+nho;
         nho:=s div 10;
         c:=chr(s mod 10 +48) +c;
     end;
    if nho>0 then str(nho,tamp)
     else tamp:='' ;
    c:=tamp+c ;
    mul1:=c;
end;

Function Mul2(a,b: ansistring): ansistring;
var sum,tamp: ansistring; nho,i,j,m: longint;
begin
    sum:=''; nho:=0; m:=-1;
    for i:=length(a) downto 1 do
     begin
         tamp:=mul1(b,(ord(a[i])-48));
         m:=m+1;
         for j:=1 to m do tamp:=tamp+'0';
         sum:=add(sum,tamp);
     end;
    mul2:=sum;
end;

function Luythua(a,b: integer): ansistring;
var i: integer; c: ansistring;
begin
    c:='1';
    for i:=1 to b do c:=mul1(c,a);
    luythua:=c;
end;

Function Sub(a,b: ansistring): ansistring;
var c: ansistring;
    i,x,y,muon,h: longint;
begin
    c:=''; muon:=0; chuanhoa(a,b);
    for i:=length(a) downto 1 do
     begin
         x:=ord(a[i])-48;
         y:=ord(b[i])-48;
         h:=x-y-muon;
         if h<0 then
          begin
             h:=h+10; muon:=1;
          end
         else muon:=0;
         c:=chr(h+48)+c;
     end;
    while (length(c)>1) and (c[1]='0') do delete(c,1,1);
    sub:=c;
end;

function div1(a: ansistring; b: longint): ansistring;
var c: ansistring; s,i,nho: longint;
begin
    c:=''; nho:=0;
    for i:=1 to length(a) do
     begin
         nho:=nho*10+ord(a[i])-48;
         s:=nho div b;
         nho:=nho mod b;
         c:=c+chr(s+48);
     end;
    while (length(c) > 1) and (c[1]='0') do delete(c,1,1);
    div1:=c;
end;

begin
    clrscr;
    write('Nhap so s: '); readln(s);
    writeln(s[1]);
    {Bieudiensnt;
    k:='1';
    for i:=1 to j do
     begin
        k:=mul1(k,(a[i]+1));
     end;
    writeln('So cac uoc cua n! la: ',k);
    d:=0; t:='1';
    for i:=2 to n do
     if prime[i]=0 then
      begin
          inc(d);
          s:=Luythua(i,(a[d]+1));
          c:=div1(sub(s,'1'),(i-1));
          t:= mul2(t,c);
      end;
    writeln('Tong cac uoc cua n! la: ',t);  }
    readln
end.






















