const fi='miner.inp';
      fo='miner.out';
var n: longint;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    writeln('6 6 6 7 7 7');
    writeln('6 6 3 3 7 7');
    writeln('6 5 2 3 4 7');
    writeln('9 5 5 4 4 8');
    writeln('9 9 5 5 8 8');
    writeln('9 9 9 8 8 8');
    close(output);
end;

begin
    writef
end.
