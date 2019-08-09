const fi='stack123.inp'; fo='stack123.out';
var n,dauA,dauB: longint;
    a,b,c,d: array[-5..100000] of integer;

procedure readf;
var i: longint;
begin
   assign(input,fi); reset(input);
   readln(n);
   for i:=1 to n do
    read(d[i]);
   close(input);
end;

procedure xuli;
var i: longint; ok: boolean;
begin
   ok:=true;
   for i:=1 to n do
    a[i]:=i;
   daua:=1; daub:=0;
   for i:=0 to n do
    b[i]:=-1;
   for i:=1 to n do
    begin
        while (a[daua]<>d[i]) and (b[daub]<>d[i]) do
         begin
             if daua>n then
              begin
                  ok:=false;
                  break;
              end;
             daub:=daub+1;
             b[daub]:=a[daua];
             daua:=daua+1;
             writeln('A->B');
         end;
        if not ok then
         begin
             clrscr;
             writeln('Khong chuyen duoc');
             break;
         end;
        if a[daua]=d[i] then
         begin
           writeln('A->C');
           daua:=daua+1;
         end;
        if b[daub]=d[i] then
         begin
           writeln('B->C');
           daub:=daub-1;
         end;
    end;
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