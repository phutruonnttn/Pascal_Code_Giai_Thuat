program Bai5_1_sgkchuyentin;
const fi='asdafds.inp';
      fo='jkbxkjv.out';
var head,adj: array[1..10000000] of longint;
    m,n,l: longint;

procedure readf;
var i,j,k: longint;
begin
    assign(input,fi); reset(input);
    readln(n,m,l);
    fillchar(head,sizeof(head),0);
    for k:=1 to m do
     begin
        readln(i,j);
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
     end;
    close(input);
end;

procedure writef;
var i,dem: longint;
begin
   assign(output,fo); rewrite(output);
   dem:=0;
   writeln('Ban bac ra cua dinh ',l,'la ',head[l+1]-head[l]);
   for i:=1 to m do
    if adj[i]=l then inc(dem);
   writeln('Ban bac vao cua dinh ',l,'la ',dem);
   close(output);
end;

begin
    readf;
    writef
end.