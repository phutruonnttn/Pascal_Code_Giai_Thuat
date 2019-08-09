const fi='bsquare.inp';
      fo='bsquare.out';
var n: longint;
    a: array[0..500,0..500] of integer;

procedure readf;
var i,j: longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do
     for j:=1 to n do
      read(a[i,j]);
    close(input);
end;

procedure xuli;
var
begin

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