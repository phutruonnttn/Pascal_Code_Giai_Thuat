{$mode objfpc}
Program khoang_cach_giua_hai_so;
uses crt;
const fi='distance.inp';
      fo='distance.out';
var f1,f2: text;
    x,y: string;
    s,i:longint;

procedure readf;
begin
    assign(f1,fi); reset(f1);
    readln(f1,x);
    readln(f1,y);
    close(f1);
end;

function D_sub( a,b: string ): byte;
var i,j,k: byte;
begin
   val(a,i,k); val(b,j,k);
   if i>=j then exit(i-j);
   if i<j then exit(j-i);
end;

function D_add( a,b: string): byte;
var i,j,k: byte;
begin
   val(a,i,k); val(b,j,k);
   if i>=j then
    begin
        j:=10+j;
        exit(j-i);
    end;

   if i<j then
    begin
        i:=10+i;
        exit(i-j);
    end;
end;

function min( a,b: byte): byte;
begin
    if a>b then exit(b);
    if a<b then exit(a);
    if a=b then exit(a);
end;

procedure xuli;
begin
    s:=0;
    for i:=1 to length(x) do
     s:=s+min(D_sub(x[i],y[i]),D_add(x[i],y[i]));
end;

procedure writef;
begin
    assign(f2,fo); rewrite(f2);
    xuli;
    writeln(f2,s);
    close(f2);
end;

begin
    clrscr;
    readf;
    writef;
end.

