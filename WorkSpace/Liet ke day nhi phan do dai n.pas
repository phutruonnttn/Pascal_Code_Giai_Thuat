{$mode objfpc}
Program Liet_ke_day_nhi_phan_do_dai_n;
const fi='NP.inp';
      fo='NP.out';
var x: array[0..1000] of 0..1;
    n,i,j: longint;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n);
    close(input);
end;

procedure writeCH;
begin
   for i:=1 to n do write(x[i],#32);
   writeln;
end;

procedure writef;
var i: longint;
begin
    assign(output,fo); rewrite(output);
    for i:=1 to n do x[i]:=0;
    repeat
     writeCH;
     i:=n;
     while x[i]=1 do dec(i);
     if i>0 then
      begin
          x[i]:=1;
          for j:=i+1 to n do x[j]:=0;
      end;
    until i=0;
    close(output);
end;

begin
    readf;
    writef;
end.
