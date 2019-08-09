{$mode objfpc}
Program Tinh_da_thuc_bang_luoc_do_hoocne;
uses crt;
const fi='poly.inp'; fo='poly.out';
var f1,f2: text;
    n,i: byte;
    x,s:real;
    a: array[0..1000] of real;
begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n,x);
    for i:=0 to n do read(f1,a[i]);
    s:=0;
    for i:=0 to n do s:=s*x+a[i];
    close(f1);
    assign(f2,fo); rewrite(f2);
    write(f2,s:0:2);
    close(f2);
end.