uses crt;
var a,b,c,n,i: integer;
begin
    clrscr;
    write('So thang n: ');readln(n);
    if n=1 then write('Sau 1 thang so cap tho la 1.');
    if n>1 then
    begin
        a:=0;
        b:=1;
        for i:=2 to n do
          begin
              c:=a+b;
              a:=b;
              b:=c;
          end;
        writeln('Sau ',n,' thang so cap tho la: ',c);
    end;
    readln
end.