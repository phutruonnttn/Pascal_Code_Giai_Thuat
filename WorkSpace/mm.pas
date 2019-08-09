program vv;
uses crt;
const fi='mm.inp';
      fo='mm.out';
 var N,M:int64;
     f1,f2:text;
begin
    clrscr;
    assign(f1,fi); reset(f1);
    assign(f2,fo); rewrite(f2);
    read(f1,n);
    repeat
    M:=n mod 10;
    n:=n div 10;
    write(f2,m,'');
    until n=0;
    close(f1);
    close(f2);
end.
