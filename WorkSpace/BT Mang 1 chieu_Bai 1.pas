{$mode objfpc}
Program Bai_1;
uses crt;
const nmax=1000;
var a:array[1..nmax] of longint;
    n,i,max,min,max2,min1:integer;
begin
    clrscr;
    write('Nhap so n: '); readln(n);
    for i:=1 to n do
     begin
        write('a[',i,']= '); readln(a[i]);
     end;
    begin
         max:= a[1];
         for i:=1 to n do
           if a[i]> max then max:= a[i];
             write('Gia tri lon nhat la: ',max);
         for i:=1 to n do if a[i]=max then writeln('  Vi tri: ',i);

         for i:=1 to n do
           if ( a[i]>max2) and( a[i]<max) then max2:=a[i];
             write(max2,' la gt lon thu hai.');
         for i:=1 to n do if a[i]= max2 then writeln('  Vi tri: ',i);
    end;

    begin
       min:=a[1];
       min1:=6;
       for i:=2 to n do
         if min>a[1] then
            begin
              min1:=min;
              min:=a[i];
            end
         else if (min1>a[i]) and ( a[i]>min) then min1:=a[i];
       writeln(min,'= min');
       writeln(min1,'= min nhi');
       write(' chi so min: ');
       for i:=1 to n do
         if a[i]=min then write(i,' ');
       writeln;
       write(' chi so min1: ');
       for i:=1 to n do
         if a[i]=min1 then write(i,' ');
       writeln;
    end;
    begin
      begin
       if n>2 then
          begin
          a[1]:=1;
          a[2]:=1;
          for i:=3 to n do
            begin
              a[i]:=a[1]+a[2];
              a[2]:=a[1];
              a[1]:=a[i];
             end;
          end
       else
          a[i]:=1;
      end;
      writeln(' day fibonaci');
      for i:=1 to n do write( a[i],' ');
     end;

readln
end.
