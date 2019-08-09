Program Tim_snt;
uses crt;
var m,n,i,k,l,j:integer;
begin
    clrscr;
    writeln('Cac so nguyen to tu M den N ( M>N>0 ) voi: ');
    write(' M= ');readln(m);
    write(' N= ');readln(n);
    if m=1 then m:=2;
    j:=0;
    for i:=m to n do
      begin
          k:=trunc(sqrt(i));
          l:=2;
          repeat l:=l+1;
          until (imod l =0) and (l >k);
           begin
               if j mod 10 = 0 then writeln;
               j:=j+1;
               write(' ',i:3);
           end;
      end;
    readln
end.
