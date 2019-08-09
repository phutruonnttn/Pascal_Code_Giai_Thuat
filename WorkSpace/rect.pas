const fi='rect.inp';
      fo='rect.out';
var m,n: longint;
    h: array[1..1000000] of longint;
    a: array[1..10000,1..10000] of byte;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(m,n);
    for i:=1 to n do read(h[i]);
    close(input);
end;

procedure xuli;
var i,j,l,k: longint;
begin
   fillchar(a,sizeof(a),0);
   //Xanh la 0, vang la 1
   for i:=1 to n do
    for j:=1 to h[i] do
     a[j,i]:=1;
   for i:=1 to m do
    for j:=1 to n do
     begin

     end;
end;

procedure writef;
var i,j: longint;
begin
   assign(output,fo); rewrite(output);
   xuli;
   close(output);
end;

begin
    readf;
    writef
end.