const fi='';
      fo='';
var r,c,zr,zc: byte;
    a: array[0..100,0..100] of char;
    b,di: array[0..500,0..500] of char;
    s: string;

procedure readf;
var i,j: byte;
begin
    assign(input,fi); reset(input);
    readln(r,c,zr,zc);
    for i:=1 to r do
     begin
         readln(s);
         for j:=1 to c do
          a[i,j]:=s[j];
     end;
    close(input);
end;

procedure xuli;
var i,j,k,d,t: integer;
begin
   for i:=1 to r do
   begin
    d:=0; t:=1;
    for j:=1 to c*zc do
     begin
      d:=d+1;
      if d>zc then
      begin
       t:=t+1;
       b[i,j]:=a[i,t];
       d:=1;
      end;
      if d<=zc then
       b[i,j]:=a[i,t];
     end;
   end;

   for i:=1 to c*zc do
   begin
    d:=0; t:=1;
    for j:=1 to r*zr do
     begin
      d:=d+1;
      if d>zr then
      begin
       t:=t+1;
       di[j,i]:=b[t,i];
       d:=1;
      end;
      if d<=zr then
       di[j,i]:=b[t,i];
     end;
   end;

   for i:=1 to r*zr do
   begin
    for j:=1 to c*zc do
     write(di[i,j]);
     writeln
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