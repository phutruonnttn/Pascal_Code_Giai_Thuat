const fi='Dfsbfs.inp';
      fo='Dfsbfs.out';
var n,m,s,t: longint;
    adj: array[1..1005] of longint;
    tr,head: array[1..1005] of longint;
    dd: array[1..1005] of boolean;

procedure readf;
var i,x,y: longint;
begin
    assign(input,fi); reset(input);
    readln(n,m,s,t);
    fillchar(head,sizeof(head),0);
    for i:=1 to m do
     begin
         readln(x,y);
         inc(head[x]);
     end;
    for i:=2 to n+1 do
     head[i]:=head[i-1]+head[i];
    reset(input);
    readln;
    for i:=1 to m do
     begin
         readln(x,y);
         adj[head[x]]:=y;
         dec(head[x]);
     end;
    close(input);
end;

Procedure DFS(u: longint);
var i,v: longint;
begin
    dd[u]:=true;
    write(u,#32);
    for i:=head[u]+1 to head[u+1] do
     begin
         v:=adj[i];
         if dd[v]=false then
          begin
              tr[v]:=u;
              dfs(v);
          end;
     end;
end;

Procedure DFS1(u: longint);
var i,v: longint;
begin
    dd[u]:=true;
    for i:=head[u]+1 to head[u+1] do
     begin
         v:=adj[i];
         if dd[v]=false then
          begin
              tr[v]:=u;
              dfs1(v);
          end;
     end;
end;

procedure BFS(k: longint);
var q: array[1..1000] of longint;
    f,l,v,u,i: longint;
begin
    fillchar(dd,sizeof(dd),false);
    f:=1; l:=1;q[1]:=k;
    dd[k]:=true;
    repeat
     u:=q[f]; inc(f);
     write(u,#32);
     for i:=head[u]+1 to head[u+1] do
      begin
          v:=adj[i];
          if dd[v]=false then
           begin
               inc(l); q[l]:=v;
               dd[v]:=true;
               tr[v]:=u;
           end;
      end;
     until f>l;
end;

procedure BFS1(k: longint);
var q: array[1..1000] of longint;
    f,l,v,u,i: longint;
begin
    fillchar(dd,sizeof(dd),false);
    f:=1; l:=1;q[1]:=k;
    dd[k]:=true;
    repeat
     u:=q[f]; inc(f);
     for i:=head[u]+1 to head[u+1] do
      begin
          v:=adj[i];
          if dd[v]=false then
           begin
               inc(l); q[l]:=v;
               dd[v]:=true;
               tr[v]:=u;
           end;
      end;
     until f>l;
end;

procedure sort;
var i,j,k,dau,cuoi: longint;
procedure swap(var a,b: longint);
var tg: longint;
begin
    tg:=a;
    a:=b;
    b:=tg;
end;
begin
    for i:=1 to n do
     begin
        dau:=head[i]+1;
        cuoi:=head[i+1];
        for j:=dau to cuoi-1 do
         for k:=j+1 to cuoi do
          if adj[j]>adj[k] then swap(adj[j],adj[k]);
     end;
end;

procedure printpath;
var a: array[1..10000] of longint;
    na,tt,i: longint;
begin
    na:=1;
    a[na]:=t;
    tt:=t;
    while tr[tt]<>s do
     begin
         inc(na); a[na]:=tr[tt];
         tt:=tr[tt];
     end;
    inc(na); a[na]:=s;
    for i:=na downto 1 do
     write(a[i],#32);
end;

procedure solve;
begin
    sort;
    fillchar(dd,sizeof(dd),false);
    dfs(t);
    writeln;
    fillchar(dd,sizeof(dd),false);
    dfs1(s);
    if dd[t]=false then
     writeln(-1)
    else
     printpath;
    writeln;
    BFS(t);
    writeln;
    bfs1(s);
    if dd[t]=false then
     writeln(-1)
    else
     printpath;
end;

procedure writef;
begin
   assign(output,fo); rewrite(output);
   solve;
   close(output);
end;

begin
    readf;
    writef
end.
