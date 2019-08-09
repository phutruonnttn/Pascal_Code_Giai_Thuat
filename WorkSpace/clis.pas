const fi='asda.inp';
      fo='asdasf.out';
var s: string;
    i,n,j,d: longint;

begin
    assign(input,fi); reset(input);
    readln(s);
    close(input);
    assign(output,fo); rewrite(output);
    n:=length(s);
    for i:=1 to n-1 do
     for j:=i+1 to n do
      if s[i]>s[j] then
       s[i]:='0';
    d:=0;
    for i:=1 to n do
     if s[i]<>'0' then d:=d+1;
    writeln(d);
    close(output);
end.
