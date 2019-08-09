{$mode objfpc}
Program xep_bang;
uses crt;
const fi='xepbang.int'; fo='xepbang.out';
      nm= 1080000000;
var f1,f2:text;
    k,l,d: byte;
    n,s,m,a: longint;

procedure readf;
begin
    assign(f1,fi); reset(f1);
    readln(f1,k,n);
    close(f1);
    assign(f2,fo); rewrite(f2);
end;

function somu(a,b: longint): longint;
var i,c: longint;
begin
    c:=1;
    for i:=1 to b do c:=c*a;
    somu:=c;
end;

procedure xepbang;
begin
   d:=0; l:=1;
   s:=somu(2,k);
   m:=s;
   while d<>k do
   begin
   if n<= (s div 2) then
    begin
        s:=s div 2;
        d:=d+1;
    end
   else
    begin
        a:=n- ((s div 2) mod n);
        if ((s div 2) mod n)=0 then a:=s div 2;
        n:=(s div 2) +1 -a;
        l:=l+1;
        s:=s div 2;
        d:=d+1;
    end;
   end;
end;

procedure writef;
begin
    xepbang;
    writeln(f2,l);
    close(f2);
end;

begin
    clrscr;
    readf;
    writef;
end.