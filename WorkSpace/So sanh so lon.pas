{$mode objfpc}
Program So_sanh_so_lon;
uses crt;
var s1,s2: ansistring;
begin
    clrscr;
    write('Nhap so thu nhat: '); readln(s1);
    write('Nhap so thu hai: '); readln(s2);
    while length(s1) <> length(s2) do
     begin
         if length(s1) > length(s2) then s2:='0'+s2;
         if length(s1) < length(s2) then s1:='0'+s1;
     end;
    if s1>s2 then writeln('So thu nhat lon hon so thu hai.')
     else
      if s1<s2 then writeln('So thu nhat nho hon so thu hai.')
       else writeln('Hai so bang nhau.');
    readln
end.