uses crt;
var a,b,x,y,m,n: real;
begin
    clrscr;
    write('Nhap 2 so a va b: ');readln(a,b);
    m:=a;
    n:=b;
    while m<>n do
      begin
          if m>n then m:=m-n;
          if m<n then n:=n-m;
      end;
    x:=a/m; y:=b/n;
    write('Phan so toi gian cua a va b la: ',x:0:0,'/',y:0:0);
    readln
end.