Program Bai_1;
uses crt;
var a,b,c,d,e,x,y,z:integer;
begin
    clrscr;
    repeat
     clrscr;
     write('Nhap ca so a,b,c,d,e nguyen duong: ');
     readln(a,b,c,d,e);
    until (a>=1) and (b>=1) and (c>=1) and (d>=1) and (e>=1);
    for x:=1 to e do
     for y:=1 to e do
      for z:=1 to e do
       if (x+y+z=e) and (a*x+b*y+c*z=d) then writeln(' x= ',x,' y= ',y,' z= ',z);
    readln
end.
