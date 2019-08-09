Program bai_3;
uses crt;
const fi='Nguyen1.txt'; fo='Nguyen2.txt';
var f1,f2,f3:text;
n,m: integer;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    reset(f2);
    assign(f3,'Nguyen12.txt');
    rewrite(f3);
    while not eof(f1) do
    begin
     readln(f1,n);
     writeln(f3,n);
    end;
    while not eof(f2) do
    begin
     readln(f2,m);
     writeln(f3,m);
    end;
    close(f1);
    close(f2);
    close(f3);
    readln
end.