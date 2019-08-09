{$mode objfpc}
Program Bai1;
uses crt;
const fi='bai1.inp';
      fo='bai1.out';
type hs= record
      hoten,diachi: array[1..60] of string;
      ngaysinh: array[1..60] of longint;
      diemtoan,diemvan: array[1..60] of real;
      xeploai: array[1..60] of char;
    end;
var n,i,dem: byte;
    a: hs;
begin
    clrscr;
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do
     begin
         readln(a.hoten[i]);
         readln(a.ngaysinh[i]);
         readln(a.diachi[i]);
         readln(a.diemtoan[i]);
         readln(a.diemvan[i]);
     end;
    close(input);
    dem:=0;
    for i:=1 to n do
     if (a.diemtoan[i]+a.diemvan[i]>=18) then
      begin
       a.xeploai[i]:='A';
       dem:=dem+1;
      end;

    assign(output,fo); rewrite(output);
    writeln('Co ',dem,' hs xep loai A: ');
   for i:=1 to n do
    if a.xeploai[i]='A' then writeln(a.hoten[i]);
    close(output);
end.