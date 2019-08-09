Program Bt_mang;
uses crt;
type mang= array[1..10000] of longint;
var a: mang;
    i,n: longint;
procedure readarr;
begin
    write('Nhap so n: '); readln(n);
    for i:=1 to n do
    begin
        write('a[',i,']= ');
        readln(a[i]);
    end;
end;

function tong(a: mang; n:longint): int64;
var i: longint; s: int64;
begin
    s:=0;
    for i:=1 to n do s:=s+a[i];
    tong:=s;
end;

procedure writesum;
begin
    writeln('Tong= ', tong(a,n));
end;

procedure soduong;
var s: int64; l: integer;
begin
   s:=0; l:=0;
   for i:=1 to n do
   begin
       if a[i]>0 then
       begin
           s:=s+a[i];
           l:=l+1;
       end;
   end;
   writeln('So luong so hang duong: ',l);
   writeln('Tong so hang duong: ',s);
end;

procedure soam;
var s: int64; l: integer;
begin
   s:=0; l:=0;
   for i:=1 to n do
   begin
       if a[i]<0 then
       begin
           s:=s+a[i];
           l:=l+1;
       end;
   end;
   writeln('So luong so hang am: ',l);
   writeln('Tong so hang am: ',s);
end;

Procedure trungbinhcong;
var tbc, tbcd,tbca: longint; d,k: byte;
begin
   tbc:=0; tbcd:=0; tbca:=0; d:=0; k:=0;
   for i:=1 to n do
   begin
       tbc:=tbc+a[i];
       if a[i]>0 then
       begin
          tbcd:=tbcd+a[i];
          d:=d+1;
       end;
       if a[i]<0 then
       begin
          tbca:=tbca+a[i];
          k:=k+1;
       end;
   end;
   writeln('Trung binh cong cua ca day: ', tbc/n:0:2);
   writeln('Trung binh cong cac so duong: ', tbcd/d:0:2);
   writeln('Trung binh cong cac so am: ', tbca/k:0:2);
end;

Procedure sohangduongdau;
begin
   for i:=1 to n do if a[i]>0 then break;
   writeln('Chi so cua so hang duong dau tien cua day la: ', i);
end;

Procedure sohangamdau;
begin
   for i:=1 to n do if a[i]<0 then break;
   writeln('Chi so cua so hang am dau tien cua day la: ', i);
end;

Procedure sohangduongcuoi;
begin
   for i:=n downto 1 do if a[i]>0 then break;
   writeln('Chi so cua so hang duong cuoi cung cua day la: ', i);
end;

Procedure sohangamcuoi;
begin
   for i:=n downto 1 do if a[i]<0 then break;
   writeln('Chi so cua so hang am cuoi cung cua day la: ', i);
end;
begin
    clrscr;
    readarr;
    writesum;
    soduong;
    soam;
    trungbinhcong;
    sohangduongdau;
    sohangamdau;
    sohangduongcuoi;
    sohangamcuoi;
    readln
end.
