{$mode onjfpc}
Program Doan_so;
uses crt;
const fi='Squares.inp'; fo='Squares.out';
var f1,f2: text;
    a,b: integer;
    n,d: longint;

Begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,n);
    close(f1);
    assign(f2,fo); rewrite(f2);
    d:=0;
    for a:=1 to 500 do
     for b:=1 to 500 do
      begin
          if (a+b)*(a-b)=n then inc(d);
      end;
    writeln(f2,d);
    close(f2);
end.
