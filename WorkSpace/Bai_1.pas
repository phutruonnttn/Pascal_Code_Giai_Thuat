{$mode objfpc}
Program Bai1;
uses crt;
var n,i: integer;
    a: array[1..1000] of longint;
    fibo: array[1..1000] of ansistring;
    max1,max2,min1,min2: longint;
    ucln,bcnn,s: longint;

procedure Chuanhoa(var a,b: ansistring);
begin
    while length(a) < length(b) do a:='0'+a;
    while length(a) > length(b) do b:='0'+b;
end;

Function add(a,b: ansistring): ansistring;
var c: ansistring;
    nho,s,x,y,i: longint;
begin
   c:=''; nho:=0;
   chuanhoa(a,b);
   for i:=length(a) downto 1 do
    begin
        x:=ord(a[i])-48;
        y:=ord(b[i])-48;
        s:=x+y+nho;
        nho:=s div 10;
        c:=chr(s mod 10 +48) +c;
    end;
   if nho>0 then c:='1'+c;
   add:=c;
end;

Function h_ucln(a,b: longint): longint;
begin
    while a<>b do
     if a>b then
      a:=a-b
     else
      b:=b-a;
     h_ucln:=a;
end;

procedure tong0;
var lmax,s,imax,i,j,t:integer;
begin
    lmax:=0;
    for i:=1 to n do
     for j:=1 to n do
      begin
         s:=0;
         for t:=i to j do s:=s+a[t];
         if (s=0) and (lmax<j-i+1) then
           begin
               lmax:=j+1-i;
               imax:=i;
           end;
      end;
    if lmax=0 then writeln('Khong co day con co tong bang 0.') else
    writeln('Day con bang 0 dai nhat co ',lmax,'  phan tu va bat dau tu ',imax);
end;

function kt(x:longint):longint;
begin
    if x>0 then exit(1);
    if x=0 then exit(0);
    if x<0 then exit(-1);
end;

procedure cungdau;
var lmax,imax,i,j,t,count:integer; ok: boolean;
begin
    lmax:=0; ok:= true;
    for i:=1 to n do
     for j:=1 to n do
         begin
             count:=0;
             for t:=i to j-1 do
               if kt(a[t])=kt(a[t+1]) then count:=count+1
                 else
                  begin
                   break;
                   ok:=false;
                  end;
             if ok=true then
              begin
                if count>lmax-1 then
                  begin
                      lmax:=j-i+1;
                      imax:=i;
                  end;
              end;
         end;
    if lmax=1 then writeln('Khong co day con nao cung dau.') else
      writeln('Day con cung dau dai nhat co ',lmax,' phan tu va bat dau tu phan tu : ',imax);
end;

Procedure maxx1;
begin
    max1:=a[1];
    for i:=2 to n do
     if a[i]>max1 then max1:=a[i];
    write('Gia tri lon nhat la ',max1,' va cac vi tri dat gia tri lon nhat la: ');
    for i:=1 to n do if a[i]=max1 then write(i,' ');
    writeln;
end;

Procedure maxx2;
begin
    max2:=low(longint);
    for i:=1 to n do
     if (a[i]>=max2) and (a[i]<>max1) then max2:=a[i];
    write('Gia tri lon nhi la ',max2,' va cac vi tri dat gia tri lon nhi la: ');
    for i:=1 to n do if a[i]=max2 then write(i,' ');
    writeln;
end;

Procedure minn1;
begin
   min1:=a[1];
    for i:=2 to n do
     if a[i]<min1 then min1:=a[i];
    write('Gia tri nho nhat la ',min1,' va cac vi tri dat gia tri nho nhat la: ');
    for i:=1 to n do if a[i]=min1 then write(i,' ');
    writeln;
end;

Procedure minn2;
begin
   min2:=high(longint);
    for i:=1 to n do
     if (a[i]<=min2) and (a[i]<>min1) then min2:=a[i];
    write('Gia tri nho nhi la ',min2,' va cac vi tri dat gia tri nho nhi la: ');
    for i:=1 to n do if a[i]=min2 then write(i,' ');
    writeln;
end;

procedure fibonacci;
begin
   if n=1 then writeln('Day Fibonacci gom n phan tu la: 0');
    if n=2 then writeln('Day Fibonacci gom n phan tu la: 0 1');
    if n>2 then
     begin
        writeln('Day Fibonacci gom n phan tu la: ');
        fibo[1]:='0';
        fibo[2]:='1';
        for i:=3 to n do
          fibo[i]:=add(fibo[i-1],fibo[i-2]);
        for i:=1 to n do write(' ',fibo[i]);
     end;
    writeln;
end;

Procedure UCLN_BCNN;
begin
   ucln:=h_ucln(a[1],a[2]);
    bcnn:=(a[1]*a[2]) div ucln;
    for i:=3 to n do
    begin
        ucln:=h_ucln(bcnn,a[i]);
        bcnn:=(bcnn*a[i]) div ucln;
    end;
    writeln('UCLN cua cac phan tu trong day: ',ucln);
    writeln('BCNN cua cac phan tu trong day: ',bcnn);
end;

begin
    clrscr;
    //nhap mang
    write('Nhap so nguyen n: '); readln(n);
    for i:=1 to n do
     begin
         write('a[',i,']= ');
         readln(a[i]);
     end;
    //Gia tri lon nhat
    maxx1;
    //Gia tri lon nhi
    maxx2;
    //Gia tri nho nhat
    minn1;
    //Gia tri nho nhi
    minn2;
    //Day Fibo gom n phan tu
    fibonacci;
    //UCLN va BCLN cua day
    UCLN_BCNN;
    //Day con gom nhieu phan tu nhat co tong bang 0
    tong0;
    //Day con gom nhieu phan tu nhat cung dau
    cungdau;

    readln
end.