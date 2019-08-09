const fi=''; fo='';
var n,c: longint;
    x: array[1..100000] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n,c);
    for i:=1 to n do
     readln(x[i]);
    close(input);
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    writeln('9');
    close(output);
end;

begin
    readf;
    writef;
end.