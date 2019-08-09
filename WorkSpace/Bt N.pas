program Bt_N;
uses crt;
var n,m,x,z,i,j,a,b:longint; du,s,t,count:byte;
begin
    clrscr;
    write('Nhap so nguyen duong N: ');readln(n);
    write('Chu so dao nguoc cua N: ');
    s:=0;t:=0;m:=n; count:=0; a:=0;
    while n <> 0 do
    begin
        du:=n mod 10;
        write(du);
        n:=n div 10;
        s:=s+1;
        if du mod 2 = 0 then t:=t+1;
    end;
    writeln;
    writeln('So cac chu so cua N: ',s);
    writeln('So cac chu so chan cua N: ',t);
    begin
    Z:=1;
    for x:=2 to m do
     begin
         Z:=Z*x;
     end;
    writeln('N!= ', Z);
    end;
    for i:=1 to m do
    begin
        j:=i;
        while j mod 5=0 do
          begin
              j:=j div 5;
              count:=count+1;
          end;
    end;
    writeln('So chu so 0 tan cung cua N!: ',count);
    for b:=1 to m-1 do
    if m mod b =0 then a:=a+1;
    if a=m then writeln('N la so nguyen to.') else writeln('N khong phai la so nguyen to.');
    readln
end.
