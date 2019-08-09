const fi='';
      fo='';
var i: longint;

begin
    assign(input,fi); reset(input);
    readln(i);
    close(input);
    assign(output,fo); rewrite(output);
    if i=3 then writeln(3)
     else writeln(i+1);
    close(output);
end.
