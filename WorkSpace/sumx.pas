const fi='sumx.inp';
      fo='sumx.out';
var n,x: int64;
    a,b: array[-10..1000005] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    fillchar(b,sizeof(b),0);
    for i:=1 to n do
     begin
      read(a[i]);
      b[a[i]]:=b[a[i]]+1;
     end;
    readln(x);
    close(input);
end;

procedure xuli;
var i: longint; d: int64;
begin
   d:=0;
   for i:=1 to n do
    begin
        if a[i]=x-a[i] then d:=d+b[x-a[i]]-1
         else

           d:=d+b[x-a[i]];
           b[a[i]]:=b[a[i]]-1;

    end;
   writeln(d);
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
