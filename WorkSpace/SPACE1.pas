Program Khong_gian;
uses crt;
const fi='space.inp'; fo='space.out';
var t,k: qword;
    f1,f2:text;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    readln(f1,t);
    k:= t mod 4 ;
    case k of
    0:writeln(f2,t+1,' ',0);
    1:writeln(f2,0,' ',t+1);
    2:writeln(f2,-(t+1),' ',0);
    3:writeln(f2,0,' ',-(t+1));
    end;
    close(f1);
    close(f2);
end.
