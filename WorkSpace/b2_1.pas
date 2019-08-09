const fi='B2_1.inp';
      fo='B2_1.out';
var n,m: byte;
    a,b: array[-1..105,-1..105] of byte;
    dem,max,dientich: longint;

procedure readf;
var i,j: byte;
begin
    assign(input,fi); reset(input);
    readln(m,n);
    fillchar(a,sizeof(a),1);
    for i:=1 to m do
     for j:=1 to n do
      read(a[i,j]);
    close(input);
end;

procedure DFS(i,j: byte);
begin
    if a[i+1,j]=0 then
     begin
      inc(dientich);
      a[i+1,j]:=1;
      dfs(i+1,j);
     end;

    if a[i,j+1]=0 then
     begin
      inc(dientich);
      a[i,j+1]:=1;
      dfs(i,j+1);
     end;

    if a[i-1,j]=0 then
     begin
      inc(dientich);
      a[i-1,j]:=1;
      dfs(i-1,j);
     end;

   if a[i,j-1]=0 then
     begin
      inc(dientich);
      a[i,j-1]:=1;
      dfs(i,j-1);
     end;
end;

procedure xuli;
var i,j: byte;
begin
   fillchar(b,sizeof(b),0);
   max:=0; dem:=0;
   for i:=1 to m do
    for j:=1 to n do
     if a[i,j]=0 then
      begin
         dientich:=1;
         a[i,j]:=1;
         dfs(i,j);
         b[i,j]:=dientich;
         if b[i,j]> max then max:=b[i,j];
         inc(dem);
      end;
   writeln(dem);
   writeln(max);
   for i:=1 to m do
    for j:=1 to n do
     if b[i,j]=max then writeln(i,#32,j);
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
