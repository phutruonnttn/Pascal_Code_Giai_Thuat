{$mode objfpc}
Program Chuyen_so_tu_he_10_sang_he_16;
uses crt;
var du: array[1..100] of byte;
    c: char;
    n: longint;
    top,i: byte;
begin
    clrscr;
    write('Nhap so he thap phan: '); readln(n);
    top:=0;
    while n <> 0 do
     begin
         top:=top+1;
         du[top]:=n mod 16;
         n:=n div 16;
     end;
    for i:=top downto 1 do
     begin
         if (du[i]>=10) and (du[i]<=15) then
          begin
            c:=chr(ord('A')+du[i]-10);
            write(c);
          end
         else write(du[i]);
     end;
    readln
end.