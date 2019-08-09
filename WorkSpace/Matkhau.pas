{$mode objfpc}
{$H+}
Program Mat_khau;
uses crt;
const fi='Matkhau.inp';
      fo='Matkhau.out';
var f1,f2: text;
    s,k: ansistring;
    i,j,n,m,d: longint;
    a,l: byte;

function catxau(a,b: longint): ansistring;
var i: longint;
begin
    catxau:='';
    for i:=a to b do
     catxau:=catxau+s[i];
end;

begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,s);
    close(f1);
    assign(f2,fo); rewrite(f2);
    n:=length(s);
    d:=0;
    for i:=1 to n do
     for j:=1 to n do
      if j-i+1>=6 then
       begin
           l:=0;
           k:=catxau(i,j);

           for a:=48 to 57 do
            begin
            for m:=1 to length(k) do
             if k[m]=chr(a) then
              begin
                  l:=l+1;

              end;

            end;

           for a:=65 to 90 do
            begin
            for m:=1 to length(k) do
             if k[m]=chr(a) then
              begin
                  l:=l+1;

              end;

            end;

            for a:=97 to 122 do
            begin
            for m:=1 to length(k) do
             if k[m]=chr(a) then
              begin
                  l:=l+1;

              end;

            end;

            if l=length(k) then d:=d+1;
       end;


      writeln(f2,d);
      close(f2);
end.