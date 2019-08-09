program kiemtra;
uses crt;
const fi='CHECK.inp';
fo='CHECK.out';
var t: qword; m,n,k: longint;
f1,f2:text;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,m,n,k);
    t:=m*n*k;
    if (t>99) and (t mod 10=0) then
    write(f2,'1')
    else write(f2,'0');
    close(f1);
    close(f2);
end.
