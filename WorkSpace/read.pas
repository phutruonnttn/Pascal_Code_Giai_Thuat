const fi='';
      fo='';
var n,k,i,sum,d,tg: longint;
    s,t,r: byte;

begin
   assign(input,fi); reset(input);
   assign(output,fo); rewrite(output);
   readln(n,k);
   for i:=1 to k do
    begin
      readln(s,t,r);
      sum:=0; d:=0; tg:=0;
      while sum<n do
       begin
          if d=t then
           begin
             tg:=tg+r;
             d:=0;
           end;
          d:=d+1;
          sum:=sum+s;
          tg:=tg+1;
       end;
      writeln(tg);
    end;
   close(input);
   close(output);
end.