uses math;
const fi='pairs.inp';
      fo='pairs.out';
var n: longint;
    h: array[1..1000000] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do
     read(h[i]);
    close(input);
end;

procedure xuli;
var i,j,l,dem,minh: longint;
    ok: boolean;
begin
   ok:=true;
   for i:=1 to n-1 do
    if h[i]<>h[i+1] then
     begin
         ok:=false;
         break;
     end;
   if ok then writeln(n-1)
   else
   if n=0 then writeln(0)
   else
   begin
   dem:=0;
   for i:=1 to n-1 do
    for j:=i+1 to n do
     begin
         minh:=min(h[i],h[j]);
         ok:=true;
         for l:=i to j do
          if (h[l]>=minh) and (l<>i) and (l<>j) then
           begin
          ok:=false;
          break;
           end;
         if ok then dem:=dem+1;
     end;
   writeln(dem);
   end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    readf;
    writef
end.