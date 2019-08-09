Program Dem_so_0;
uses crt;
const fi='count.inp'; fo='count.out';
var f1,f2: text;
n,t: int64;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,n);
    t:=0;
    repeat
     begin
      if n mod 10 = 0 then t:=t+1;
      n:=n div 10;
     end;
    until n=0;
    write(f2,t);
    close(f1);
    close(f2);
end.
