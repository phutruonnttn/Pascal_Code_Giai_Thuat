const fi='';
      fo='';

var i: longint;

begin
    assign(output,fo); rewrite(output);
    randomize;
    i:=random(1);
    if i=0 then writeln(0)
     else writeln(-1);
    close(output);
end.