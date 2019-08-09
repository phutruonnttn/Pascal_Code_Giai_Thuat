{$mode objfpc}
Program bai5;
uses crt;
var ar:array[1..10000000] of longint;
    n,a,b,i,x:longint;

procedure readf;
var i:longint;
begin
    write('Nhap n: '); readln(n);
    for i:=1 to n do
      begin
          write('ar[',i,']= '); readln(ar[i]);
      end;
    write('x='); readln(x);
    write('a='); readln(a);
    write('b='); readln(b);
end;

procedure Top(a: longint);
var i,k:longint;
begin
    k:=0;
    while k<>a do
    begin
       ar[n+1]:=ar[1];
       inc(n);
        for i:=1 to n-1 do
         ar[i]:=ar[i+1];
        dec(n);
       k:=k+1;
    end;
end;

procedure Bottom(b: longint);
var i,k,bot:longint;
begin
   k:=0;
   while k<>b do
     begin
         bot:=ar[n];
         for i:=n downto 2 do
           ar[i]:=ar[i-1];
         ar[1]:=bot;
         k:=k+1;
     end;
end;

procedure xuly(x: longint);
var count: longint;
begin
    count:=0;
    while count<>x do
      begin
          Top(a);
          Bottom(b);
          count:=count+1;
      end;
end;

begin
    clrscr;
    readf;
    xuly(x);
    for i:=1 to n do write(ar[i],' ');
    readln
end.
