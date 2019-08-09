type arr=array[1..10000] of longint;
var dd,x,n,slx,i,j:longint;
procedure sangnt;
procedure phantich;
var i,k,j:longint;
begin

    sangnt;slx:=0;
    for k:=2 to n do
     if dd[k]=0 then begin
       inc(slx);x[slx]:=0;i:=k;
       while ( n div i)>0 do
        begin
            x[slx]:=x[slx]+n div i;
            i:=i*k;
        end;
        end;
end;
procedure inkq;
var i:longint;
begin
    for i:=1 to slx do write(x[i],' ');
end;
begin
    while not(seekof(input)) do
      begin
          readln(n);
          phantich;
          inkq;writeln;
      end;
      close(input);close(output)'2
end;