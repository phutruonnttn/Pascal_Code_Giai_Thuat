uses crt;
var s: string;

procedure chuanhoa(var s: string);
begin
    while s[1]=' ' do delete(s,1,1);
    while s[length(s)]=' ' do delete(s,length(s),1);
    while pos('  ',s) > 0 do delete(s, pos('  ',s),1);
end;

procedure chuanhoa_hoten(var s: string);
var i: longint;
begin
   chuanhoa(s);
   s[1]:=upcase(s[1]);
   for i:=2 to length(s) do
    begin
      if (s[i]>='A') and (s[i]<='Z') then
        if (s[i-1]<>' ') then s[i]:=chr(ord(s[i])+32);
      if (s[i]>='a') and (s[i]<='z') then
        if (s[i-1]=' ') then s[i]:=upcase(s[i]);
    end;
end;

begin
    clrscr;
    write('Nhap s: '); readln(s);
    chuanhoa_hoten(s);
    writeln(s);
    readln
end.