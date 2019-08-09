{$mode objfpc}
const fi='adsa1.inp';
      fo='asd1.out';
var n,k,conlai,d: real;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    close(input);
    conlai:=n; d:=0;
end;

procedure backtrack(i: integer);
begin
     while i<n do
     begin
     if i=k then write(conlai,#32);
     if conlai-trunc(conlai)=0 then
     begin
         conlai:=conlai/2;
         d:=d+1;
         backtrack(i+1);
         conlai:=conlai*2;
         d:=d-1;

         conlai:=conlai-0.5;
         d:=d+1;
         backtrack(i+1);
         conlai:=conlai+0.5;
      d:=d-1;
     end
    else
     begin
         conlai:=conlai-0.5;
         d:=d+1;
         backtrack(i+1);
         conlai:=conlai+0.5;
         d:=d-1;
     end;
    end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    backtrack(1);
    close(output);
end;

begin
    readf;
    writef
end.
