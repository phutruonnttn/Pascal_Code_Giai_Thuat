const fi='ONEARC.inp';
      fo='ONEARC.out';
var n,m,time: longint;
    a,b: array[0..30005,0..30005] of boolean;
    f,ff,c: array[0..3000] of longint;
    dd: array[0..3000] of boolean;

procedure readf;
var i,u,v: longint;
begin
    assign(input,fi); reset(input);
    fillchar(a,sizeof(a),false);
    fillchar(b,sizeof(b),false);
    readln(n,m);
    for i:=1 to m do
     begin
         readln(u,v);
         a[u,v]:=true;
         b[v,u]:=true;
     end;
    close(input);
end;

procedure dfs(u: longint);
var v: longint;
begin
    dd[u]:=true;
    for v:=1 to n do
     if a[u,v] and (dd[v]=false) then
      begin
         dfs(v);
      end;
    time:=time+1;
    f[u]:=time;
end;

procedure dfs1(u: longint);
var v: longint;
begin
    dd[u]:=true;
    for v:=1 to n do
     if b[u,v] and (dd[v]=false) then
      begin
         dfs1(v);
      end;
    {time:=time+1;
    f[u]:=time;  }
end;

procedure xuli;
var i,d,j,u,v: longint;  ok: boolean;
begin
   time:=0;
   fillchar(dd,sizeof(dd),false);
   dfs(1);
   //for i:=1 to n do write(f[i],#32);
   for i:=1 to n do
    if dd[i]=false then
     begin
      //writeln(i);
    dfs(i);
    end;

   for i:=1 to n do
    ff[f[i]]:=i;
   d:=0;

   fillchar(dd,sizeof(dd),false);


   for i:=n downto 1 do
    if dd[ff[i]]=false then
     begin
         d:=d+1;
         c[d]:=ff[i];
         dfs1(ff[i]);
         {writeln(ff[i]);
         for j:=1 to n do
          if dd[j] then write(j,#32);
         writeln;}
     end;
   //for i:=d downto 1 do write(c[i],#32);
   a[c[d],c[1]]:=true;
   b[c[1],c[d]]:=true;
   u:=c[d]; v:=c[1];
   {ok:=true;
   fillchar(dd,sizeof(dd),false);
   dfs(1);
   for i:=1 to n do
    if dd[i]=false then
     begin
        writeln('NO');
        ok:=false;
        break;
     end;
     if ok then
      begin
          writeln('YES');
          writeln(c[d],#32,c[1]);
      end;  }




   time:=0;
   fillchar(dd,sizeof(dd),false);
   dfs(1);
   //for i:=1 to n do write(f[i],#32);
   for i:=1 to n do
    if dd[i]=false then
     begin
      //writeln(i);
    dfs(i);
    end;

   for i:=1 to n do
    ff[f[i]]:=i;
   d:=0;

   fillchar(dd,sizeof(dd),false);


   for i:=n downto 1 do
    if dd[ff[i]]=false then
     begin
         d:=d+1;
         c[d]:=ff[i];
         dfs1(ff[i]);
         {writeln(ff[i]);
         for j:=1 to n do
          if dd[j] then write(j,#32);
         writeln;}
     end;
   //for i:=d downto 1 do write(c[i],#32);
    { for i:=1 to d do
     writeln(c[i]); }
     //writeln(c[d],c[1]);

    if d<>1 then writeln('NO')
     else
      begin
          writeln('YES');
          writeln(u,#32,v);
      end;
end;

procedure writef;
begin
   assign(output,fo); rewrite(output);
   xuli;
   //writeln('NO');
   close(output);
end;

begin
    readf;
    writef
end.





