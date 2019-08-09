Program Bai_3;
uses crt;
const fi='Space.int'; fo='Space.out';
var f1,f2: text;
m,t: qword;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,t);
    m:=t;
    t:=t+1;
    if (m mod 4 = 0) or ((m-1) mod 4 = 0) then
    begin
    if m mod 2 <> 0 then write(f2,'0 ',t);
    if m mod 2 = 0 then write (f2,t,' 0');
    end
    else
    begin
    if m mod 2 <> 0 then write(f2,'0 -',t);
    if m mod 2 = 0 then write (f2,'-',t,' 0');
    end;
    close(f1);
    close(f2);
    readln
end.
