const fi='lienthong.inp';
      fo='lienthong.out';
var m,n,first,last,solt,dem: longint;
    adj,b: array[1..200005] of longint;
    sx,tr,head,q: array[1..200005] of longint;
    dd: array[1..200005] of boolean;

procedure readf;
var k,j,i: longint;
begin
    assign(input,fi); reset(input);
    readln(n,m);
    fillchar(head,sizeof(head),0);
    for k:=1 to m do
     begin
         readln(i,j);
         inc(head[i]);
         inc(head[j]);
     end;
    for i:=2 to n+1 do
     head[i]:=head[i-1]+head[i];
    reset(input);
    readln;
    for k:=1 to m do
     begin
         readln(i,j);
         adj[head[i]]:=j;
         dec(head[i]);
         adj[head[j]]:=i;
         dec(head[j]);
     end;
end;

Procedure DFS(u: longint);
var i,v: longint;
begin
    dd[u]:=true;
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
    dem:=dem+1;
    sx[dem]:=u;
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

procedure sort;
var i,j: longint;
procedure swap(var a,b: longint);
var tg: longint;
begin
    tg:=a;
    a:=b;
    b:=tg;
end;
begin
   for i:=1 to dem-1 do
    for j:=i+1 to dem do
     if sx[i]>sx[j] then swap(sx[i],sx[j]);
end;

procedure lienthong;
var i,j: longint;
begin
    fillchar(dd,sizeof(dd),false);
    for i:=1 to n do tr[i]:=0;
    solt:=0;
    for i:=1 to n do
     if dd[i]=false then
      begin
          solt:=solt+1;
          dfs(i);
      end;
    if solt=1 then writeln('YES')
     else
      begin
          writeln('NO');
      end;
    writeln(solt);
    for i:=1 to n do
     if tr[i]=0 then
       begin
         dem:=0;
         fillchar(dd,sizeof(dd),false);
         dfs1(i);
         sort;
         for j:=1 to dem do write(sx[j],#32);
         writeln
       end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    lienthong;
    close(output);
end;

begin
    readf;
    writef
end.


