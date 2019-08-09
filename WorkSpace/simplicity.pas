const fi='';
      fo='';
var s: string;
    a: array['a'..'z'] of longint;
    b: array[1..100] of longint;

procedure xuli;
var i,k,tg,n,d1,d2: longint; j: char;
begin
   d1:=0; d2:=0;
   n:=length(s);
   fillchar(a,sizeof(a),0);
   for i:=1 to n do
    a[s[i]]:=a[s[i]]+1;
   for j:='a' to 'z' do
    begin
       if a[j]<>0 then
        begin
            d1:=d1+1;
            b[d1]:=a[j];
        end;
    end;
  for i:=1 to d1-1 do
   for k:=i to d1 do
    if b[i]>b[k] then
     begin
        tg:=b[i];
        b[i]:=b[k];
        b[k]:=tg;
     end;
  k:=0;
  while d1>2 do
   begin
       k:=k+1;
       d2:=d2+b[k];
       d1:=d1-1;
   end;
  writeln(d2);
end;


begin
    assign(input,fi); reset(input);
    readln(s);
    close(input);
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end.