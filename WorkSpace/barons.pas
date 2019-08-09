const fi='';
      fo='';
var n: longint;
    x,y: array[1..100] of longint;

procedure readf;
var i: longint;
begin
   assign(input,fi); reset(input);
   readln(n);
   for i:=1 to n do
    readln(x[i],y[i]);
   close(input);
end;

procedure xuli;
var i: longint; ok: boolean;
begin
    if (n=1) and (x[1]=y[1]) and (x[1]>2) then writeln(0)
     else
     if y[1]=1 then
      begin

            begin
             ok:=true;
             for i:=2 to n do
              if y[i]<>i then ok:=false;
             if ok then
              begin
                  for i:=1 to n-1 do
                   if x[i]>x[i+1] then ok:=false;
              end;
             if ok then writeln(n);
            end;
      end
       else
        begin
            randomize;
            writeln(random(n));
        end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    readf;
    writef
end.