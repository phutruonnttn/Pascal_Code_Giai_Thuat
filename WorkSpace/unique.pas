{$mode objfpc}
Program So_duy_nhat;
uses crt;
const fi='Unique.inp'; fo='Unique.out';
var f1,f2: text;
    a: array[1..1000000] of string[20];
    i,n,j,d: longint;
//-------------------------------------
Begin
    clrscr;
    assign(f1,fi); reset(f1);
    n:=0;
    while not seekeof(f1) do
     begin
         n:=n+1;
         readln(f1,a[n]);
     end;
    close(f1);
    assign(f2,fo); rewrite(f2);
    for i:=1 to n do
     begin
      d:=0;
      for j:=1 to n do
       begin
         if (a[i]=a[j]) then d:=d+1;
       end;
       if d=1 then
        begin
            writeln(f2,a[i]);
            break;
        end;
     end;
    close(f2);
end.
