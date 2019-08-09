{$mode objfpc}
Program Chu_so;
uses crt;
const fi='chuso1.inp'; fo='chuso1.out';
var f1,f2: text;
    n,i: byte;
    m: longint;
    a,b: string;

procedure readf;
begin
    assign(f1,fi); reset(f1);
    readln(f1,a);
    read(f1,n,m);
    close(f1);
end;

function Luythua: longint;
var c:longint;
begin
    c:=length(a);
    for i:=1 to n do
     c:=c*2;
    luythua:=c;
end;

procedure xuli;
begin
    b:=a;
    for i:=length(a) downto 1 do
     b:=b+a[i];
end;

procedure writef;
begin
    xuli;
    assign(f2,fo); rewrite(f2);
    if m>luythua then writeln(f2,-1)
     else
       writeln(f2,b[m mod length(b)]);
    close(f2);
end;

begin
    clrscr;
    readf;
    writef;
end.