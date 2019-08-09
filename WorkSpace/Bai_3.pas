{$mode objfpc}
Program Bai3;
uses crt;
const fi='tdoan.inp';
      fo='tdoan.out';
type arr=array[1..1000000] of longint;
var a:arr;n,sum,k,i,j,lmin,ileft,iright,imin:longint;

procedure readf;
begin
    assign(input,fi);reset(input);
    readln(n,k);
    for i:=1 to n do read(a[i]);
    close(input);
end;

procedure left;
begin
    sum:=sum-a[ileft];
    ileft:=ileft+1;
    if ileft>iright then
      begin
          iright:=ileft;
          sum:=a[ileft];
      end;
end;

procedure right;
begin
    iright:=iright+1;
    sum:=sum+a[iright];
end;

procedure uplate;
begin
    if lmin>iright-ileft+1 then
      begin
          lmin:=iright-ileft+1;
          imin:=ileft;
      end;
      left;
end;

procedure xuly;
begin
   lmin:=n+1;ileft:=1;iright:=ileft;
   sum:=a[1];
   repeat
     if sum=k then uplate
       else if sum<k then right
         else left;
   until iright>n;
   if lmin=n+1 then lmin:=0;
end;

procedure writef;
begin
    assign(output,fo);rewrite(output);
      writeln(imin,' ',lmin);
      close(output);
end;

begin
    clrscr;
    readf;
    xuly;
    writef;
end.
