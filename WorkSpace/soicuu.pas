const fi='soicuu.inp';
      fo='soicuu.out';
var r,c,soi,cuu,soit,cuut: longint;
    a: array[0..300,0..300] of longint;
    s: string;

procedure readf;
var i,j: longint;
begin
    assign(input,fi); reset(input);
    //rao=-1; cuu=1; soi=2; dat=0
    readln(r,c);
    for i:=0 to r+1 do
     for j:=0 to c+1 do
      a[i,j]:=-1;
    for i:=1 to r do
     begin
       readln(s);
       for j:=1 to c do
        if s[j]='.' then a[i,j]:=0
         else
          if s[j]='#' then a[i,j]:=-1
           else
            if s[j]='V' then a[i,j]:=2
             else a[i,j]:=1;
     end;
    close(input);
end;

procedure DFS(i,j: byte);
begin
    if a[i+1,j]<>-1 then
     begin
      if a[i+1,j]=2 then inc(soi)
           else
            if a[i+1,j]=1 then inc(cuu);
      a[i+1,j]:=-1;
      dfs(i+1,j);
     end;

    if a[i,j+1]<>-1 then
     begin
      if a[i,j+1]=2 then inc(soi)
           else
            if a[i,j+1]=1 then inc(cuu);
      a[i,j+1]:=-1;
      dfs(i,j+1);
     end;

    if a[i-1,j]<>-1 then
     begin
      if a[i-1,j]=2 then inc(soi)
           else
            if a[i-1,j]=1 then inc(cuu);
      a[i-1,j]:=-1;
      dfs(i-1,j);
     end;

   if a[i,j-1]<>-1 then
     begin
      if a[i,j-1]=2 then inc(soi)
           else
            if a[i,j-1]=1 then inc(cuu);
      a[i,j-1]:=-1;
      dfs(i,j-1);
     end;
end;

procedure xuli;
var i,j: longint;
begin
    soit:=0; cuut:=0;
    for i:=1 to r do
     for j:=1 to c do
      if (a[i,j]=0) or (a[i,j]=1) or (a[i,j]=2) then
       begin
          soi:=0;
          cuu:=0;
          if a[i,j]=2 then inc(soi)
           else
            if a[i,j]=1 then inc(cuu);
          a[i,j]:=-1;
          dfs(i,j);
          if cuu>soi then cuut:=cuut+cuu
           else soit:=soit+soi;
       end;
    writeln(cuut,#32,soit);
end;

procedure writef;
var i,j: longint;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    readf;
    writef
end.
