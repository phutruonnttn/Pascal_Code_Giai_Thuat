const fi='dayso.inp';
      fo='dayso.out';
var n,s,dem:longint; a:array[1..1000000] of longint;
                     t:array[0..1000000] of longint;
procedure readf;
var i:longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do
        read(a[i]);
    readln(s);
    close(input);

end;

procedure taotong;
var i:longint;
begin
    t[0]:=0;
    for i:=1 to n do
        t[i]:=t[i-1]+a[i];

end;





procedure xuly;
var i,j:longint; tong:longint;
begin
    taotong;
    for i:=1 to n-2 do
        for j:=i+2 to n do
                begin
                    tong:=t[j]-t[i-1];
                    if (tong=s) then
                        dem:=dem+(n-j+1);
                    //writeln(i,' ',j,' ',tong);
                   if tong>s then break;
                end;
   writeln(dem);

end;

procedure writef;
var i:longint;
begin
    assign(output,fo); rewrite(output);
    xuly;
    close(output);
end;

BEGIN
    readf;
    writef;
END.

