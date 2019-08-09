Program De_2;
uses crt;
var m,n,i: integer;
    k,l: integer;
begin
    clrscr;
    write('Nhap M va N: '); readln(m,n);
    for i:=1 to m do
    begin
        if (m mod i) = 0 then
        begin
            k:=k+1;
            m:=m div i;
        end;
    end;
    for i:=1 to n do
    begin
        if (n mod i) = 0 then
        begin
            l:=l+1;
            n:=n div i;
        end;
    end;
    if k=l then write('M va N la ke thu.') else
    write('M va N khong phai la ke thu.');
    readln
end.