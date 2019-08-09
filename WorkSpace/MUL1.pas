program Tinh_tich;
uses crt;
const fi='MUL1.inp';
fo='MUL1.out';
var m,n,i: byte; t: qword;
f1,f2:text;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,m,n);
    t:=1;
    for i :=m to n do
    begin
       if i mod 2 <>0 then t:= t*i;
    end;
    write(f2,t);
    close(f1);
    close(f2);
end.
