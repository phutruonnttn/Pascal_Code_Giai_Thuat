{$mode objfpc}
Program chinh_hop_chap_k;
uses crt;
var i,m,n: integer;
    x: array[1..1000] of integer;
    dd: array[1..1000] of boolean;

procedure nhap;
begin
    write('Nhap n,m: '); readln(n,m);
end;

procedure ghinhan;
var i: integer;
begin
    for i:=1 to m do write(x[i],' ');
    writeln;
end;

procedure tryy(i: integer);
var j:integer;
begin
    for j:=1 to n do
    if (dd[j]=true) then
     begin
         x[i]:=j;
         dd[j]:=false;
         if i=m then ghinhan
          else tryy(i+1);
         dd[j]:=true;
     end;
end;

begin
    clrscr;
    nhap;
    fillchar(dd,sizeof(dd),true);
    tryy(1);
    readln
end.
