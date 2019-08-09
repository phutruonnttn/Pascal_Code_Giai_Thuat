const fi='little.inp';
      fo='little.out';
var n,m: byte;
    a: array[0..105,0..105] of byte;
    tr: array[0..105] of longint;
    b: array[0..105] of byte;

procedure readf;
var i,k,l: byte;
begin
    assign(input,fi); reset(input);
    readln(n,m);
    fillchar(a,sizeof(a),0);
    for i:=1 to m do
     begin
         readln(k,l);
         a[k,l]:=1;
     end;
    close(input);
end;

procedure bfs(u: byte);
var q: array[1..105] of longint;
    f,l,i,j,x,y: longint;
begin
    fillchar(tr,sizeof(tr),0);
    f:=1; l:=1; q[1]:=u; tr[u]:=-1;
    repeat
      x:=q[f]; inc(f);
      for y:=1 to n do
       if (a[x,y]=1) and (tr[y]=0) then
        begin
            inc(l);
            q[l]:=y;
            tr[y]:=x;
        end;
    until f>l;
end;

procedure xuli;
var d,t,s: longint;
begin
   fillchar(b,sizeof(b),0);
   b[1]:=1; b[2]:=1;
   d:=2;
   s:=1; t:=2;
   bfs(s);
   while tr[t]<>s do
    begin
        if b[tr[t]]=0 then
         begin
             d:=d+1;
             b[tr[t]]:=1;
         end;
        t:=tr[t];
    end;

   s:=2; t:=1;
   bfs(s);
   while tr[t]<>s do
    begin
        if b[tr[t]]=0 then
         begin
             d:=d+1;
             b[tr[t]]:=1;
         end;
        t:=tr[t];
    end;
    writeln(d);
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


















