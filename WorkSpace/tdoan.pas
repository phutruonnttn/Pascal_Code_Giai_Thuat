{$mode objfpc}
program tongdoan;
const fi='tdoan.inp';
      fo='tdoan.out';
type arr=array[1..100000]of longint;
var a,s:arr;n,m,imin,lmin,sum,k,i,j,t,ileft,iright:longint;

procedure readf;
begin
    assign(input,fi);reset(input);
                 readln(n,k);
                 for i:=1 to n do read(a[i]);
    close(input);
end;

{dophuc tap 0(n3)}
procedure solution1;
begin
    lmin:=n+1;
    for i:=1 to n do
        for j:=i to n do
            begin
               sum:=0;
               for t:=i to j do sum:=sum+a[t];
               if (sum=k)and(lmin>j-i+1)then
                 begin
                     lmin:=j-i+1 ;
                     imin:=i;
                 end;
            end;
    if lmin=n+1 then lmin:=0;
end;

{do phuc tap 0(n2)}
procedure init;
begin
    s[1]:=a[1];
    for i:=2 to n do s[i]:=s[i-1]+a[i];
end;

procedure solution2;
begin
    init;
    lmin:=n+1;
    for i:=1 to n do
      for j:=i to n do
        if ((s[j]-s[i]+a[i])=k) and(lmin>j-i+1)then
           begin
               lmin:=j-i+1;
               imin:=i ;
           end;
    if lmin=n+1 then lmin:=0;
end;

{do phuc tap 0(n)}
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

procedure update;
begin
    if lmin>iright-ileft+1 then
      begin
          lmin:=iright-ileft+1;
          imin:=ileft;
      end;
      left;
end;

procedure solution3;
begin
    lmin:=n+1;
    ileft:=1;iright:=ileft;
    sum:=a[1];
    repeat
        if sum=k then update
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
    readf;
    if n<=300 then solution1
     else if n<=5000 then solution2
     else solution3;

    writef;
   // for i:=1 to n do write(s[i],' ');
end.
