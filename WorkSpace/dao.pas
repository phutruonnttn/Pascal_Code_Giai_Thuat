const fi='dao.inp';
      fo='dao.out';
var dinh: array[1..500] of record
       x,y: longint;
       end;
    a: array[1..500,1..500] of longint;
    tr: array[1..500] of longint;
    n,m,u,v: longint;

procedure readf;
var i,j: longint;
begin
    assign(input,fi); reset(input);
    readln(n,m,u,v);
    for i:=1 to n do
     readln(dinh[i].x,dinh[i].y);
    for i:=1 to n do
     for j:=1 to n do
      if sqrt(sqr(dinh[i].x-dinh[j].x)+sqr(dinh[i].y-dinh[j].y))<=m then
       begin
           a[i,j]:=1;
           a[j,i]:=1;
       end;
     close(output);
end;

procedure BFS;
var q: array[1..500] of longint;
    f,l,i,j,x,y: longint;
begin
    fillchar(tr,sizeof(tr),0);
    f:=1; l:=1; q[1]:=u;
    tr[u]:=-1;
    repeat
     x:=q[f]; inc(f);
     for y:=1 to n do
      if (a[x,y]=1) and (tr[y]=0) then
       begin
           inc(l); q[l]:=y;
           tr[y]:=x;
       end;
    until f>l;
end;

procedure writef;
var g: array[1..500] of longint;  d,i: longint;
begin
    assign(output,fo); rewrite(output);
    BFS;
    if tr[v]=0 then
     writeln('NO SOLUTION')
    else
     begin
         d:=0;
         while tr[v]<>u do
          begin
             d:=d+1;
             g[d]:=tr[v];
             v:=tr[v];
          end;
         writeln(d);
         for i:=d downto 1 do
          write(g[i],#32);
     end;
    close(output);
end;

begin
    readf;
    writef
end.