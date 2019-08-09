uses math;
const fi='coins.inp';
      fo='coins.out';
var k,l,m: longint;
    a,b: array[-200..1000005] of longint;

procedure readf;
var i: longint;
begin
   assign(input,fi); reset(input);
   readln(k,l,m);
   for i:=1 to m do read(b[i]);
   close(input);
end;

procedure xuli;
var i,j: longint;
begin
   for i:=-100 to -1 do a[i]:=1;
   a[0]:=0;
   for i:=1 to 1000000 do
     begin
        a[i]:=1-min(min(a[i-1],a[i-k]),a[i-l]);
     end;
   for i:=1 to m do
    if a[b[i]]=1 then write('A')
     else write('B');
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