uses crt;
var xA,yA,xC,yC,xE,yE,xG,yG: real;
begin
    clrscr;
    writeln('Nhap toa do hcn thu 1: ');
    write('Nhap toa do dinh trai-tren (xA;yA): ');readln(xA,yA);
    write('Nhap toa do dinh phai-duoi (xC;yC): ');readln(xC,yC);
    writeln('Nhap toa do hcn thu 2: ');
    write('Nhap toa do dinh trai-tren (xE;yE): ');readln(xE,yE);
    write('Nhap toa do dinh phai-duoi (xG;yG): ');readln(xG,yG);
    if (yC>yE) or (yA>yG) or (xC>xA) or (xA>xG) then write('Hai hcn khong co diem chung.')
    else write('Hai hcn co diem chung.');
    readln
end.