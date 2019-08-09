uses crt;
const fi='xaulon.inp'; fo='xaulon.out';
var f1,f2: text;
    k,d,i,j: int64;
    n: ansistring;
begin
    clrscr;
    assign(f1,fi); reset(f1);
    readln(f1,k);
    readln(f1,n);
    close(f1);
    assign(f2,fo); rewrite(f2);
    d:=length(n);
     n:='0'+n;
     i:=d+2; j:=0;
     repeat
      dec(i);
      if i=d+2 then dec(i);
      if n[i]>n[i-1] then
       begin
          delete(n,i,1);
          inc(i,2);
          inc(j);
       end;
     until (j=k);
     while n[1]='0' do delete(n,1,1);
     writeln(f2,n);
     close(f2);
end.

