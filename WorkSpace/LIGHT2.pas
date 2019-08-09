Program Hai_Dang;
uses crt;
const fi='light.inp';
      fo='light.out';
var h,m,s,r:byte;
    g:qword;
    f1,f2:text;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,h,m,s);
    if ((h=6) and (m=0) and (s=0)) then writeln(f2,'ON') else
      if (h=18) and (m=0) and (s=0) then writeln(f2,'OFF') else
        if (h>=6) and (h<18) then writeln(f2,'OFF') else
          begin
            if h>=18 then r:=h-18 else r:=6+h;
            g:=r*3600+m*60+s;
            if g mod 25 <=9 then writeln(f2,'ON')
           else writeln(f2,'OFF');
           end;
    close(f1);
    close(f2);
end.
