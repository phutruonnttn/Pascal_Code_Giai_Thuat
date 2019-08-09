const fi='pushups.inp';
      fo='pushups.out';
var n,m,k,l: longint;
    s: array[-5..500] of byte;
    f: array[0..5000,0..5000] of byte;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n,m);
    for i:=1 to m do
     read(s[i]);
    close(input);
end;

procedure xuli;
var i,u,v,x,y,maxx: longint;
begin
   fillchar(f,sizeof(f),0);
   f[0,0]:=1;
   for u:=0 to n do
    for v:=u to n do
     if (f[u,v]=1) then
      for i:=1 to m do
       begin
         x:=u+s[i];
         y:=v+x;
         if (x<=n) and (y<=n) then f[x,y]:=1;
       end;
    maxx:=-1;
    for i:=1 to n do
     if f[i,n]=1 then
      if maxx<i then maxx:=i;
    writeln(maxx);
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
