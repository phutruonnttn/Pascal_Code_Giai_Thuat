{$mode objfpc}
Program Bai_3;
uses crt;
const fi='HAI.INP'; fo='HAI.OUT';
var f1,f2: text;
    m,n,i,k: integer; s: longint;
begin
    clrscr;
    assign(f1,fi); reset(f1);
    assign(f2,fo); rewrite(f2);
    while not eof(f1) do
    begin
        readln(f1,n,m);
        s:=1;
        for i:=1 to m do s:=s*n;
        k:=s mod 100;
        if k=0 then writeln(f2,'00') else writeln(f2,k);
    end;
    close(f1); close(f2);
end.
