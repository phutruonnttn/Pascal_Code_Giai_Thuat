{$mode objfpc}
Program Bai6_7;
uses crt;
var s: string;

function Lower(a: char): char;
begin
   a:=(chr(ord(a)+32));
   lower:=a;
end;

procedure writechu(b: char);
begin
   if (ord(b)>64) and (ord(b)<91) then
    begin
        lower(b);
        write(lower(b));
    end
   else write(b);
end;

procedure vietxau(c: string);
var i: byte;
begin
   for i:=1 to length(c) do writechu(c[i]);
end;

Begin
    clrscr;
    write('Nhap sau bat ki: ');
    readln(s);
    vietxau(s);
    readln
end.