const max=20;
var x:array[1..max] of integer;
    c:array[1..max] of boolean;
    n,k:integer;
procedure printresult;
var i:integer;
begin
    for i:=1 to k do write(x[i],' ');
    writeln;
end;
procedure tryy(i:integer);
var j:integer;
begin
    for  j:=1 to n do
    if c[j] then
     begin
         x[i]:=j;
         if i=k then printresult
         else
          begin
              c[j]:=false;
              tryy(i+1);
              c[j]:=true;
          end;
     end;
end;
begin
    assign(input,'arranges.inp');
    reset(input);
    assign(output,'arranges.out');
    rewrite(output);
    readln(n,k);
    fillchar(c,sizeof(c),true);
    tryy(1);
    close(input);close(output);
end.
