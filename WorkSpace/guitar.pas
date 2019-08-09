const fi='guitar.inp';
      fo='guitar.out';
var n,k: longint;
    d: array[0..10005] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    for i:=1 to n do
     read(d[i]);
    close(input);
end;

procedure xuli;
var i,j,dem,sum: longint;
begin
   dem:=0; sum:=0;
   for i:=1 to n do
    begin
       if d[i]>0 then
        if dem<k then
         begin
             dem:=dem+1;
             sum:=sum+d[i];
             writeln(d[i]);
         end
        else dem:=0;
    end;
   writeln(sum);
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