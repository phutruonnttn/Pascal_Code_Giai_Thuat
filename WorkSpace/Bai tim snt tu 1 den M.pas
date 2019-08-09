Program B2;
uses crt;
var j:word; n,m,k,i:longint;
begin
    clrscr;
    write('Nhap so M: ');readln(m);
    j:=0;
    if m<=1 then write('Khong co so nguyen to nao vi so nguyen to nho nhat la 2!')
    else
     begin
         for n:=2 to m do
          begin
              k:=trunc(sqrt(n));
              i:=2;
              while (n mod i <> 0) and (i<=k) do i:=i+1;
              if i>k then
               begin
                   if j mod 12 = 0 then writeln;
                   j:=j+1;
                   write(' ',n:3);
               end;
          end;
     end;
    writeln;
    readln
end.
