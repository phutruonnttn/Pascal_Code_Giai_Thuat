{$mode objfpc}
Program B4_36;
uses crt;
var s,t: ansistring;

begin
    clrscr;
    write('Nhap sau S: '); readln(s);
    t:='';
    for i:=1 to length(s) do
    if pos(s[i],t)=0 then t:=t+s[i];
    write('So ki tu khac nhau la ', length(t));
    readln
end.