{$mode objfpc}
{$H+}
Program Xoa_So;
uses crt;
const fi='Xoaso.inp'; fo='Xoaso.out'; max=100;
var f1,f2: text;
    a,s: array [1..max] of longint;
    n,m,b: ansistring;
    k,p,j: byte;
    i: shortint;
    d: longint;

function timmax(a:ansistring;x,y:longint):ansistring;
var i:longint; max:ansistring;
begin
    max:=a[x];
    for i:=x to y do
        if a[i]>max then max:=a[i];
    timmax:=max;
end;

function timmin(a:ansistring;x,y:longint):ansistring;
var i:longint; min:ansistring;
begin
    min:=a[x];
    for i:=x to y do
        if a[i]<min then min:=a[i];
    timmin:=min;
end;


function lonnhat(n:ansistring;k:longint):ansistring;
var i:longint; max,min:ansistring;
begin
    max:=timmax(n,1,length(n));
    while (k<>0) do
        begin
            k:=k-1;
            if n[1]<>max then
                min:=timmin(n,1,pos(max,n)-1)
                else min:=timmin(n,2,length(n));
            delete(n,pos(min,n),1);
        end;
    lonnhat:=n;
end;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,p,k);
    for i:=1 to p do readln(f1,a[i],s[i]);
    close(f1);
    assign(f2,fo); rewrite(f2);
     n:='';
     for i:=1 to p do
      begin
          for j:=1 to a[i] do
          begin
             str(s[i],m);
             n:=n+m;
          end;
      end;
     d:=length(n);
     b:=n;
     n:=n+'0';
     i:=0; j:=0;
     repeat
      inc(i);
      if i=0 then inc(i);
      if n[i]>n[i+1] then
       begin
          delete(n,i,1);
          dec(i,2);
          inc(j);
       end;
     until (j=k) or (i=d+1);
     delete(n,length(n),1);
     while n[1]='0' do delete(n,1,1);
     writeln(f2,n); writeln(f2,lonnhat(b,k));
     close(f2);
end.
