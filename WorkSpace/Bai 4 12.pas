Program B4_12;
uses crt;
var q: array[1..40] of real;
    i,k: byte;
    tong: real;
begin
    clrscr;
    repeat
     write('Nhap so k (1 <k <41 ): ');
     readln(k);
    until (2<=k) and (k<=40);
    for i:=1 to k do
    begin
        write('q[',i,']= ');
        readln(q[i]);
    end;
    tong:=0;
    for i:=1 to k do
     tong:=tong+ q[i]*q[i];
    for i:=1 to k do
     if q[i]<>0 then
        q[i]:=q[i]/(sqrt(tong));
    for i:=1 to k do
     write(' ',q[i]:0:4);
    readln
end.