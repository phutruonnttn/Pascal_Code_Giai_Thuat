{$mode objfpc}
Program Me_cung;
uses crt;
const fi='mecung.inp';
      fo='mecung.out';
var n,a,b: byte;
    arr: array[1..1000,1..1000] of byte;

procedure readf;
var i,j: integer;
begin
    assign(input,fi); reset(input);
    readln(n,a,b);
    for i:=1 to n do
      begin
        j:=1; read(arr[i,j]);
        while not seekeoln do
         begin
           j:=j+1;
           read(arr[i,j]);
         end;
      end;
    close(input);
end;

procedure Xem;
var i,j: byte;
begin
    writeln(n,' ',a,' ',b,' ');
    for i:=1 to n do
     begin
         for j:=1 to n do
          write(arr[i,j],' ');
          writeln;
     end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xem;
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.

