Program Bai_3;
uses crt;
const fi='Space.int'; fo='Space.out';
var f1,f2: text;
m,t: integer;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    while not eof(f1) do
    begin
    readln(f1,t);

    m:=t;
    t:=t+1;
    if (m mod 4 = 0) or ((m-1) mod 4 = 0) then
    begin
       if m mod 2 <> 0 then writeln(f2,'0 ',t);
       if m mod 2 = 0 then writeln (f2,t,' 0');
    end
    else
    begin
       if m mod 2 <> 0 then writeln(f2,'0 -',t);
       if m mod 2 = 0 then writeln (f2,'-',t,' 0');
    end;
    end;
    close(f1);
    close(f2);
    readln
end.
