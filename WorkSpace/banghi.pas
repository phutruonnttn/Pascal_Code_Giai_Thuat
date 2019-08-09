{$mode objfpc}
program baitap;
uses crt;
const fi='banghi1.inp';
      fo='banghi1.out';
type hs=record
     hvt:string[30];
     ho,ten,dem:string[10];
     diem:real;
     end;
var n,i:longint;
    a:array[1..100000] of hs;
procedure readf;

begin
    assign(input,fi);reset(input);
    readln(n);
    for i:=1 to n do
      begin
          readln(a[i].hvt);readln(a[i].diem);
      end;
end;

procedure swap(var a,b:hs);
var tg:hs;
begin
    tg:=a;a:=b;b:=tg;
end;

procedure tach;
var i,k,vt:longint;s:string;
begin
    for i:=1 to n do
     begin
         s:=a[i].hvt;
         vt:=1;
         while s[vt]<> ' ' do inc(vt);
         a[i].ho:=copy(s,1,vt-1);
         k:=length(s);
         while s[k]<> ' ' do dec(k) ;
         a[i].ten:=copy(s,k+1,length(s)-k);
         a[i].dem:=copy(s,vt+1,k-vt-1);
     end;
end;

procedure Sapxep;
var i,j:longint;tg:hs;
begin

    for i:=1 to n-1 do
      for j:=i+1 to n do
       begin
           if a[i].ten>a[j].ten then swap(a[i],a[j]);
           if a[i].ten= a[j].ten then
             begin
                 if a[i].ho>a[j].ho then swap(a[i],a[j]);
                 if a[i].ho=a[j].ho then if a[i].dem>a[j].dem
                  then swap(a[i],a[j]);
             end;
       end;
      for i:=1 to n do
       begin
           if a[i].dem='' then write(a[i].ho,' ',a[i].ten)
           else
             write(a[i].ho,' ',a[i].dem,' ',a[i].ten);
             writeln;
       end;
end;

procedure writef;
var i,j:longint;
begin
    assign(output,fo);rewrite(output);
    sapxep;
    for i:=1 to n-1 do
      for j:=i+1 to n do
        if a[i].diem<=a[j].diem then swap(a[i],a[j]);
    writeln(' Top 3 nguoi co diem cao nhat: ');
    for i:=1 to 3 do writeln(a[i].ho,' ',a[i].dem,' ',a[i].ten);
    close(output);
end;

begin
    clrscr;
    readf;
    tach;
    writef;
end.







































