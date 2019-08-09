{$mode objfpc}
Program pha_hoa_chat;
uses crt;
const fi='mixtures.inp';
      fo='mixtures.out';
var t,n,i,j: byte;
    a: array[0..105] of byte;

procedure xuli;
var i: byte;
begin
    if n=1 then writeln(a[n])
     else if n=2 then writeln(a[1]*a[2])
      else
       begin

       end;
end;

begin
    clrscr;
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    readln(t);
    for i:=1 to t do
     begin
         readln(n);
         for j:=1 to n do read(a[j]);
         readln;
         xuli;
     end;
    close(input); close(output);
end.