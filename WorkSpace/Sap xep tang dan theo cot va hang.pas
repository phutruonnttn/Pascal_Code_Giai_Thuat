{$mode objfpc}
Program sap_xep_tang_theo_cot_hang;
uses crt;
var a,b: array[1..10000,1..10000] of longint;
    m,n,i,j: longint;
Procedure Nhap_mang;
begin
    write('Nhap hang: '); readln(m);
    write('Nhap cot: '); readln(n) ;
    for i:=1 to m do
     for j:=1 to n do
      begin
          write('a[',i,',',j,']= ');
          readln(a[i,j]);
      end;
end;

Procedure Xuat_mang;
begin
    for i:=1 to m do
     begin
         for j:=1 to n do write(a[i,j],' ');
         writeln;
     end;
end;

Procedure Sap_xep_theo_hang;
var g,h,tg: longint;
begin
   b:=a;
   for i:=1 to m do
    begin
        for j:=1 to n do
         begin
             for g:=1 to n-1 do
              for h:=g+1 to n do
               if a[i,g]>a[i,h] then
                begin
                    tg:=a[i,g];
                    a[i,g]:=a[i,h];
                    a[i,h]:=tg;
                end;
         end;
    end;
end;

Procedure Xuat_mang_sap_xep_hang;
begin
    writeln('Mang da duoc sap xep thep hang: ');
    xuat_mang;
end;

Procedure Sap_xep_theo_cot;
var g,h,tg: longint;
begin
   for j:=1 to n do
    begin
        for i:=1 to m do
         begin
             for g:=1 to m-1 do
              for h:=g+1 to m do
               if b[g,j]>b[h,j] then
                begin
                    tg:=b[g,j];
                    b[g,j]:=b[h,j];
                    b[h,j]:=tg;
                end;
         end;
    end;
end;

Procedure Xuat_mang_sap_xep_cot;
begin
    writeln('Mang da duoc sap xep thep cot: ');
    for i:=1 to m do
     begin
         for j:=1 to n do write(b[i,j],' ');
         writeln;
     end;
end;

Begin
    clrscr;
    Nhap_mang;
    Xuat_mang;
    sap_xep_theo_hang;
    xuat_mang_sap_xep_hang;
    sap_xep_theo_cot;
    xuat_mang_sap_xep_cot;
    readln
end.