{$mode objfpc}
Program Bai_2;
uses crt;
const fi='SO.INP'; fo='SO.OUT';
var f1,f2: text;
    m,n,t,s,a: integer;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    while not eof(f1) do
    begin
        readln(f1,n);
        m:=n; t:=1;
        while n div 10 <> 0 do
        begin
            t:=t+1;
            n:=n div 10;
        end;
        write(f2,t,'  ');

        s:=0;
        while m <> 0 do
        begin
            a:=m mod 10;
            s:=s+a;
            m:=m div 10;
        end;
        write(f2,s);
        writeln(f2);
    end;
    close(f1); close(f2);
end.