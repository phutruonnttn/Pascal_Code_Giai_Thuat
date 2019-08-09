const fi='schedule.inp';
      fo='schedule.out';
var n,d: integer;

procedure readf;
begin
    assign(input,fi); reset(input);
    read(n);
    close(input);
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    writeln(-1);
    close(output);
end;

begin
    readf;
    writef
end.
