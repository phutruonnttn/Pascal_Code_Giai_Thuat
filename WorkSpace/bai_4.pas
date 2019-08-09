{$mode objfpc}
uses crt;
type arr=array[1..100000000] of longint;
var n,i,j:longint;
    a,b:arr;

procedure readf;
var i,j:longint;
begin
    write('Nhap n: '); readln(n);
    for i:=1 to n do
      begin
          write('a[',i,']= ');
          readln(a[i]);
          b[i]:=a[i];
      end;
end;

procedure quicksort(var a:arr;l,r:longint);
var i,j,chot,tg:longint;
begin
    i:=l;j:=r;
    chot:=a[(l+r) div 2];
    repeat
         while a[i]<chot do inc(i);
         while a[j]>chot do dec(j);
         if i<=j then
           begin
               tg:=a[i];
               a[i]:=a[j];
               a[j]:=tg;
               inc(i);dec(j);
           end;

    until i>j;
    if l<j then quicksort(a,l,j);
    if i<r then quicksort(a,i,r);
end;

procedure writef;
begin
    quicksort(a,1,n);
    for i:=1 to n do
     begin
       write(a[i],' (vi tri ban dau la ');
       for j:=1 to n do if b[j]=a[i] then write(j);
       write(')');
       writeln;
     end;

end;

begin
    clrscr;
    readf;
    writef;
    readln
end.
