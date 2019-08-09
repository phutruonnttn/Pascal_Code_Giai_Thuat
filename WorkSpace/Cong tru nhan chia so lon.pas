{$mode objfpc}
Program Cong_tru_nhan_chia;
uses crt;
var a,b,sum: ansistring;
    so,code: longint;

procedure Chuanhoa(var a,b: ansistring);
begin
    while length(a) < length(b) do a:='0'+a;
    while length(a) > length(b) do b:='0'+b;
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

function sub1(a,b: ansistring): ansistring;
var c: ansistring;
begin
    chuanhoa(a,b);
    if a>b then exit(sub(a,b));
    if a<b then
    begin
      c:=sub(b,a);
      sub1:='-'+c;
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

function cmp(a,b: ansistring): longint;
begin
    chuanhoa(a,b);
    if a>b then exit(1);
    if a=b then exit(0);
    if a<b then exit(-1);
end;

function div2(a,b: ansistring): ansistring;
var kb: array[0..10] of ansistring;
    nho,c: ansistring; k,i: longint;
begin
    kb[0]:='0'; nho:='';
    for i:=1 to 10 do kb[i]:=add(kb[i-1],b);
    for i:=1 to length(a) do
     begin
         nho:=nho+a[i];
         k:=1;
         while cmp(nho,kb[k])<>-1 do inc(k);
         c:=c+chr(k-1+48);
         nho:=sub(nho,kb[k-1]);
     end;
    while (length(c)>1) and (c[1]='0') do delete(c,1,1);
    div2:=c;
end;

function mod1(a: ansistring; b: longint): longint;
var i,h: longint;
begin
    h:=0;
    for i:=1 to length(a) do
     h:=(ord(a[i])-48 +h*10) mod b;
    mod1:=h;
end;

begin
    clrscr;
    {write('Nhap so thu nhat: '); readln(a);
    write('Nhap so thu hai: '); readln(b);
    writeln('Tong 2 so la: ',add(a,b));
    writeln('Hieu 2 so la: ',sub1(a,b));
    writeln('Tich 2 so la: ',mul2(a,b));
    writeln('Phep chia lay phan nguyen cua 2 so: ',div2(a,b));  }
    so:=0;
    write('Nhap xau a: '); readln(a);
    val(a,so,code);  writeln(so,#32,code);
    readln
end.
