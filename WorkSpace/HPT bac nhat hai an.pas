{$mode objfpc}
Program Giai_he_pt_bac_nhat_2_an;
uses crt;
var a,b,c,d,e,f,x,y,l: longint;
    found: boolean;
begin
    clrscr;
    found:=false; l:=0;
    write('Nhap cac so a,b,c,d,e,f: '); readln(a,b,c,d,e,f);
    for x:=1 to c do
     for y:=1 to c do
      begin
          if (a*x+b*y=c) and (d*x+e*y=f) then
           begin
               l:=l+1;
               found:=true;
           end;
      end;
    if found and (l=1) then write('Hpt co 2 nghiem la: ',x,' ',y);
    if not found then write('Hpt vo nghiem.');
    if found and (l>1) then write('Hpt co vo so nghiem.');
    readln
end.