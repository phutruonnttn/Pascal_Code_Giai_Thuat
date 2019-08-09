uses crt;
var x,N,Z: longint;
begin
    clrscr;
    writeln('Nhap so can tinh giai thua: '); readln(N);
    if N<0 then writeln('Khong tinh duoc vi so nay nho hon 0!')
    else
    begin
    Z:=1;
    for x:=2 to N do
     begin
         Z:=Z*x;
     end;
    end;
    writeln('Ket qua: ', Z);
    readln
end.