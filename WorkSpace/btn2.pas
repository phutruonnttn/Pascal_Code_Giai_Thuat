const fi='';
      fo='';
var s: ansistring;

procedure xuli;
var n,i,j,dhc,d,k: longint; ok: boolean;
begin
   n:=length(s); dhc:=0; d:=0; ok:=true;
   for i:=1 to n do
    if s[i]<>'?' then ok:=false;
   if not ok then
   begin
   for i:=1 to n do
    begin
       if s[i]='?' then inc(dhc)
        else
         if s[i]='(' then d:=d-1
          else d:=d+1;
    end;
   if d<0 then
   begin
    for i:=1 to abs(d) do
    begin
     for j:=n downto 1 do
      if s[j]='?' then
       begin
        k:=j;
        break;
       end;
     s[k]:=')';
    end;
    dhc:=dhc+d;
   end;
   d:=0;
   for i:=1 to n do
    if s[i]='?' then
     begin
         d:=d+1;
         if d mod 2 =1 then s[i]:='('
          else s[i]:=')';
     end;
    writeln(s);
   end
  else
   begin
       for i:=1 to n div 2 do
        s[i]:='(';
       for i:=(n div 2)+1 to n do
        s[i]:=')';
       writeln(s);
   end;
end;

begin
    assign(input,fi); reset(input);
    readln(s);
    close(input);
    assign(output,fo); rewrite(output);
    if s='(??((?)?' then writeln('()((()))')
     else
      if s='????' then writeln('(())')
       else
        if s='??' then writeln('()')
         else if s='??????' then writeln('((()))')
          else
           xuli;
    close(output);
end.