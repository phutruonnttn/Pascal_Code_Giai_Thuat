Program B4_10;
uses crt;
var uv: array[1..100000] of longint;
    n,i,a,m,j: integer;

begin
    clrscr;
    write('Nhap so m: '); readln(m);
    writeln('Nhap day U la 1 day khong giam: ');
    for i:=1 to m do
    begin
        write('U[',i,']= '); readln(uv[i]);
    end;
    writeln('Nhap day V la 1 day khong giam: ');
    for i:=m+1 to (2*m) do
    begin
        write('V[',i-m,']= '); readln(uv[i]);
    end;
    for i:=2 to (2*m) do
    for j:=2*m downto 1 do
    begin
        if uv[j]<uv[j-1] then
        begin
            a:=uv[j];
            uv[j]:=uv[j-1];
            uv[j-1]:=a;
        end;
    end;
    for i:=1 to (2*m) do write(uv[i],' ');
    readln
end.