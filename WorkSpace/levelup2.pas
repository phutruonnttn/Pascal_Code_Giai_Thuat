const fi='levelup.inp';
      fo='levelup.out';
var n: int64;
    c: array[0..100,0..100] of int64;

function dem(i: longint): longint;
var j: longint;
begin
    dem:=0;
    while i<>0 do
     begin
         j:=i mod 2;
         i:=i div 2;
         if j=1 then dem:=dem+1;
     end;
end;

procedure xuli;
var i,kq,j,s: longint;
begin
   {d:=0;
   for i:=1 to n do
    if dem(i) mod 3=0 then d:=d+1;
   writeln(d);  }
   fillchar(c,sizeof(c),0);
   for i:=1 to 60 do
   begin
    c[0,i]:=1;  c[i,i]:=1; end;
   for i:=2 to 60 do
    for j:=1 to i-1 do
      c[j,i]:=c[j-1,i-1]+c[j,i-1];
   s:=0; kq:=0;
   for i:=60 downto 0 do
    if (n shr i) and 1=1 then
     begin
         for j:=0 to i do
          if (s+j) mod 3 =0 then
           kq:=kq+c[j,i];
         s:=s+1;
     end;
     if (s mod 3 =0) then kq:=kq+1;
     writeln(kq-1);
end;

begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    while not seekeof(input) do
     begin
         readln(n);
         xuli;
     end;
    close(input); close(output);
end.