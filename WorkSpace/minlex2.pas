const fi='';
      fo='';
var l,r,k,i: longint;
    ok: boolean;
begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    while not seekeof(input) do
     begin
         readln(l,r,k);
         if k>r then writeln(-1)
          else
           if k<l then
            begin
                i:=k;
                while k<l do
                 i:=i+k;
                if i<=r then writeln(i)
                 else writeln(-1);
            end
          else
           begin
         ok:=false;
         for i:=l to r do
          if i mod k =0 then
           begin
               ok:=true;
               writeln(i);
               break;
           end;
         if ok=false then writeln(-1);
         end;
     end;
    close(input);
    close(output)
end.
