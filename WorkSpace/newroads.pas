const fi='newroads.inp';
      fo='newroads.out';
var n,m: longint;
    a: array[1..40000,1..40000] of byte;
    dd: array[0..100005] of byte;

Procedure readf;
var i,u,v: longint;
begin
    assign(input,fi); reset(input);
    fillchar(a,sizeof(a),0);
    readln(n,m);
    for i:=1 to m do
     begin
        readln(u,v);
        a[u,v]:=1;
     end;
    close(input);
end;

procedure dfs(u: longint);
var v: longint;
begin
    dd[u]:=1;
    for v:=1 to n do
     if (a[u,v]=1) and (dd[v]=0) then
      begin
         dfs(v);
      end;
end;

function ktra(a,b: longint): boolean;
var i: longint;
begin
    fillchar(dd,sizeof(dd),0);
    dfs(a);
    if dd[b]=0 then exit(false);

    fillchar(dd,sizeof(dd),0);
    dfs(b);
    if dd[a]=0 then exit(false);
    exit(true);
end;

procedure xuli1;
var i,j,d: longint;
begin
   d:=0;
   for i:=1 to n-1 do
    for j:=i+1 to n do
     if (ktra(i,j)) then
      if ( a[i,j]=0) and (a[j,i]=0) then d:=d+2
       else d:=d+1;
   writeln(d);

end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    if n<=100 then xuli1;
    close(output);
end;

begin
    readf;
    writef
end.






















