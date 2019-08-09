uses crt;
var s1,s2,s3: string ;

begin
    clrscr;
    write('Nhap s1: '); readln(s1);
    write('Nhap s2: '); readln(s2);
    write('Nhap s3: '); readln(s3);
    writeln(concat(s1,s2,s3));
    readln
end.