const fi='levelup.inp';
      fo='levelup.out';
var n: longint;

function dem(i: longint): longint;
var j: longint;
begin
    dem:=0;
    while i<>0 do
     begin
         j:=i mod 2;
         i:=i div 2;
         if j=1 then dem:=dem+1;
     end;
end;

procedure xuli;
var i,d: longint;
begin
   d:=0;
   for i:=1 to n do
    if dem(i) mod 3=0 then d:=d+1;
   writeln(d);
end;

begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    while not seekeof(input) do
     begin
         readln(n);
         xuli;
     end;
    close(input); close(output);
end.