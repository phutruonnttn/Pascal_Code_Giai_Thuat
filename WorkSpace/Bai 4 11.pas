Program b4_11;
uses crt;
var p: array[1..100] of longint;
    n,i,l,k: byte;
    max,min,a: longint;
begin
    clrscr;
    repeat
     clrscr;
     write('Nhap so N thoa man 1< n < 101: ');
     readln(n);
    until (2<=n) and (100>=n);
    for i:=1 to n do
    begin
        write('p[',i,']= '); readln(p[i]);
    end;
    max:=p[n];
    for i:=n downto 1 do
     if max<p[i] then
     begin
         max:=p[i];
         l:=i;
     end;
     min:=p[1];
     for i:=2 to n do
     if min>p[i] then
     begin
         min:=p[i];
         k:=i;
     end;
    a:=p[l];
    p[l]:=p[k];
    p[k]:=a;

    for i:=1 to n do write(p[i],' ');
    readln
end.
