Program Chuyen_Hoa_ve_Thuong;
uses crt;
var s: string;
    i: byte;
begin
    clrscr;
    write('Nhap 1 xau in hoa: '); readln(s);
    for i:=1 to length(s) do
    begin
        if s[i]=' ' then write(' ') else
        write(chr(ord(s[i])+32));
    end;
    readln
end.
