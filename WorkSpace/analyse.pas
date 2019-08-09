const fi='analyse.inp';
      fo='analyse.out';
var n:longint; prime:array[1..1000000] of byte;
procedure sangnt;
var i,j:longint;
begin
  for i:=2 to n do
    prime[i]:=0;
  for i:=2 to trunc(sqrt(n)) do
    if prime[i]=0 then
      begin
          j:=i*i;
          while j<=n do
            begin
                prime[j]:=1;
                j:=j+i;
            end;
      end;
end;


procedure phantich;
var i,j,s:longint;
begin
  sangnt;
  for i:=2 to n do
    if prime[i]=0 then
      begin
         s:=0;
         j:=i;
          while j<=n do
            begin
                s:=s+n div j;
                j:=j*i;
            end;
          write(s,' ');
      end;
    writeln;
end;



procedure xuly;
var i:longint;
begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    while not eof(input) do
      begin
          readln(n);
          phantich;
      end;
    close(input);
    close(output);
end;

BEGIN
    xuly;
END.
