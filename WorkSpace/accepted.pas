const fi='';
      fo='';
var n: byte;
    a: array[1..100] of byte;

procedure readf;
var i: byte;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do
     read(a[i]);
    close(input);
end;

procedure sx;
var tg,i,j: byte;
begin
    for i:=1 to n-1 do
     for j:=i+1 to n do
      if a[i]>a[j] then
       begin
           tg:=a[i];
           a[i]:=a[j];
           a[j]:=tg;
       end;
end;

procedure xuli;
var lon,be: longint; i: byte;
begin
    sx;
    be:=0; lon:=0;
    for i:=1 to (n div 2) do
      be:=be+a[i];
    for i:=(n div 2) +1 to n do
      lon:=lon+a[i];
    writeln(lon-be);
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