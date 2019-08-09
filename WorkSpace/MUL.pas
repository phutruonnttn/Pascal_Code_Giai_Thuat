Program Tich_so;
uses crt;
const fi='MUL.inp'; fo='MUL.out';
var f1,f2: text;
n,m,i: byte; t: qword;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,n,m);
    t:=1;
    for i:=n to m do t:=t*i;
    write(f2,t);
    close(f1);
    close(f2);
end.
