{$mode objfpc}
{$H+}
Program Chu_so;
uses crt;
const fi='chuso.inp';
      fo='chuso.out';
var f1,f2: text;
    n: byte;
    m: longint;
    a: array[0..25] of ansistring;
    c: ansistring;

procedure readf;
begin
    assign(f1,fi); reset(f1);
    readln(f1,a[0]);
    read(f1,n,m);
    close(f1);
end;

function daonguoc(a: ansistring): ansistring;
var i: longint; b: ansistring;
begin
   b:='';
   for i:=length(a) downto 1 do b:=b+a[i];
   daonguoc:=b;
end;

procedure xuli;
var i: byte;
begin
    for i:=1 to n do a[i]:=a[i-1]+daonguoc(a[i-1]);
    c:=a[n];
end;

procedure writef;
begin
    xuli;
    assign(f2,fo); rewrite(f2);
    if m>length(c) then writeln(f2,-1)
     else
      writeln(f2,c[m]);
    close(f2);
end;

begin
    clrscr;
    readf;
    writef;
end.
