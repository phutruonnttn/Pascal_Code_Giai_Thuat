{$mode objfpc}
Program BT_Xau;
uses crt;
var s,f,a,b,c: string;
    i: longint;
Begin
    clrscr;
    write('Nhap vao 1 xau bat ki: '); readln(s);
    f:=s;
    for i:=1 to length(s) do s[i]:=upcase(s[i]);
    writeln('Xau da cnuyen thanh chu in: ',s);

    a:=f;
    while pos('ghet',f) > 0 do
     begin
         insert('thuong',f,pos('ghet',f));
         delete(f,pos('ghet',f), length('ghet'));
     end;
    if a<>f then writeln('Xau da doi tu: ',f);

    b:=a;
    for i:=1 to length(a) do if a[i]=' ' then delete(a,pos(' ',a),1);
    writeln('Xau da xoa ki tu trang: ', a);

    c:='';
    for i:=length(b) downto 1 do c:=c+b[i];
    writeln('Xau dao nguoc: ',c);

    //xau b chua thay doi

    readln
end.
