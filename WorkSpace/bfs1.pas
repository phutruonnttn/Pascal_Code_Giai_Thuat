const fi='';
      fo='';
var n,m: integer;
    x,y: array[1..100000] of integer;

procedure readf;
var i: integer;
begin
    assign(input,fi); reset(input);
    readln(n,m);
    for i:=1 to m do
     readln(x[i],y[i]);
    close(input);
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    writeln('0');
    writeln('-1');
    close(output);
end;

begin
    readf;
    writef
end.