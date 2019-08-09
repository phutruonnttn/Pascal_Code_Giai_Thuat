{$mode objfpc}
Program Chu_so_0_tan_cung_cua_n_giai_thua;
uses crt;
const fi='SO.INP'; fo='SO.OUT';
var f1,f2: text;
    n: longint; b,s: integer;
begin
    clrscr;
    assign(f1,fi); reset(f1);
    assign(f2,fo); rewrite(f2);
    while not seekeof(f1) do
      begin
       readln(f1,n);
       b:=5; s:=0;
       repeat
        s:=s+trunc(n/b);
        b:=b*5;
       until trunc(n/b)=0;
       writeln(f2,s);
      end;
    close(f1);
    close(f2);
end.
