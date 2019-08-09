Program Hai_Dang;
uses crt;
const fi='light.inp'; fo='light.out';
var h,m,n,s:byte;
    f1,f2:text;
begin
   clrscr;
   assign(f1,fi);
   reset(f1);
   assign(f2,fo);
   rewrite(f2);
   readln(f1,h,n,s);
   m:=n+1;
   if (6<=h) and (h<18) then write(f2,'OFF') else
   begin
   if m mod 5=1 then
    begin
        if s<11 then write(f2,'ON') else
        if s<26 then write(f2,'OFF') else
        if s<36 then write(f2,'ON') else
        if s<51 then write(f2,'OFF') else write(f2,'ON');
    end;
   if m mod 5=2 then
    begin
        if s<16 then write(f2,'OFF') else
        if s<26 then write(f2,'ON') else
        if s<41 then write(f2,'OFF') else
        if s<51 then write(f2,'ON') else write(f2,'OFF');
    end;
   if m mod 5=3 then
    begin
        if s<6 then write(f2,'OFF') else
        if s<16 then write(f2,'ON') else
        if s<31 then write(f2,'OFF') else
        if s<41 then write(f2,'ON') else
        if s<56 then write(f2,'OFF') else write(f2,'ON');
    end;
   if m mod 5=4 then
    begin
        if s<6 then write(f2,'ON') else
        if s<21 then write(f2,'OFF') else
        if s<31 then write(f2,'ON') else
        if s<46 then write(f2,'OFF') else
        if s<56 then write(f2,'ON') else write(f2,'OFF');
    end;
   if m mod 5=0 then
    begin
        if s<11 then write(f2,'OFF') else
        if s<21 then write(f2,'ON') else
        if s<36 then write(f2,'OFF') else
        if s<45 then write(f2,'ON') else write(f2,'OFF');
    end;
   end;
   close(f1);
   close(f2);
end.
