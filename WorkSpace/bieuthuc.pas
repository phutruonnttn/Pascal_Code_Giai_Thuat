{$mode objfpc}
Program Tao_bieu_thuc;
uses crt;
const fi='bieuthuc.inp';
      fo='bieuthuc.out';
var  n,m: byte;
     s: real;
     x: array[1..1000000] of byte;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,s);
    close(input);
end;

procedure ghinhan;
var i: byte; d: shortint; l: real;
begin
    d:=2; l:=1;
    for i:=1 to n-1 do
     begin
       if x[i]=1 then
        begin
          l:=l+d;
          inc(d);
        end;

       if x[i]=2 then
        begin
          l:=l-d;
          inc(d);
        end;

       if x[i]=3 then
        begin
          l:=l*d;
          inc(d);
        end;

       if x[i]=4 then
        begin
          l:=l/d;
          inc(d);
        end;
     end;
    if l=s then
     begin
       d:=2; inc(m);
       for i:=1 to n-2 do write('(');
       write(1);
       for i:=2 to n-1 do
        begin
         if x[i-1]=1 then
          begin
           write('+',d,')');
           inc(d);
          end;

         if x[i-1]=2 then
          begin
           write('-',d,')');
           inc(d);
          end;

         if x[i-1]=3 then
          begin
           write('*',d,')');
           inc(d);
          end;

         if x[i-1]=4 then
          begin
           write('/',d,')');
           inc(d);
          end;
        end;
       if x[n-1]=1 then write('+');
       if x[n-1]=2 then write('-');
       if x[n-1]=3 then write('*');
       if x[n-1]=4 then write('/');
       write(n);
       writeln;
     end;
end;

procedure tryy(i: integer);
var j: byte;
begin
    for j:=1 to 4 do
     begin
         x[i]:=j;
         if i=n-1 then ghinhan
          else tryy(i+1);
     end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    m:=0;
    tryy(1);
    writeln(m);
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.
