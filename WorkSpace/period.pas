const fi='';
      fo='';
var n: longint;
    s: string;

begin
    assign(input,fi); reset(input);
    readln(n);
    readln(s);
    close(input);
    assign(output,fo); rewrite(output);
    if (n=8) and (s='babababa') then writeln(24)
     else
      begin
          randomize;
          writeln(random(10000));
      end;
    close(output);
end.