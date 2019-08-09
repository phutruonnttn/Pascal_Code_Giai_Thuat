{$mode objfpc}
Program Balo1;
uses crt;
const fi='balo.inp';
      fo='balo.out';
var f1,f2: text;
    a,c: array[1..100] of word;
    l: array[0..100,0..100] of word;
    i,j,n,w,max,t: integer;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,w);
    for i:=1 to n do
     readln(a[i],c[i]);
    close(input);
end;

procedure xuli;
begin
    for i:=0 to w do l[0,i]:=0;
    for i:=0 to n do l[i,0]:=0;
    for i:=1 to n do
     for j:=1 to w do
      if a[i]<=j then
       if l[i-1,j]>l[i-1,j-a[i]]+c[i] then l[i,j]:=l[i-1,j]
        else l[i,j]:=l[i-1,j-a[i]]+c[i];

    max:=l[1,w];
    for i:=2 to n do
     if l[i,w]> max then
      begin
          max:=l[i,w];
          t:=i;
      end;
    writeln(max);
    while max>0 do
     begin
         writeln(t,' ',a[t],' ',c[t]);
         max:=max-c[t];
         for i:=1 to n do
          if l[i,w]=max then
           begin
               t:=i;
               break;
           end;
     end;
end;

Procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.