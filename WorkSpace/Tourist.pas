program tourist;

const
  tfi = 'tourist.inp';
  tfo = 'tourist.out';

var
  res : int64;
  n,m,cnt : longint;
  tc : array [1..4] of longint;
  a,b : array [1..300000] of longint;
  f : array [1..300000,1..3] of longint;
  p : array [0..300000] of int64;

procedure update(u,v : longint);
  begin
    if p[v] >= p[f[u,1]] then
      begin
        f[u,3] := f[u,2];
        f[u,2] := f[u,1];
        f[u,1] := v;
      end
    else
    if p[v] >= p[f[u,2]] then
      begin
        f[u,3] := f[u,2];
        f[u,2] := v;
      end
    else
    if p[v] >= p[f[u,3]] then f[u,3] := v;
  end;

procedure enter;
  var i : longint;
  begin
    assign(input,tfi);
    reset(input);
    read(n,m);
    for i := 1 to n do read(p[i]);
    for i := 1 to m do
      begin
        read(a[i],b[i]);
        update(a[i],b[i]);
        update(b[i],a[i]);
      end;
    close(input);
  end;

procedure case1;
  var i : longint;
  begin
    for i := 1 to n do
      if res < p[i] then
        begin
          res := p[i];
          cnt := 1;
          tc[1] := i;
        end;
  end;

procedure case2;
  var i : longint;
  begin
    for i := 1 to m do
      if res < p[a[i]] + p[b[i]] then
        begin
          res := p[a[i]] + p[b[i]];
          cnt := 2;
          tc[1] := a[i];
          tc[2] := b[i];
        end;
  end;

procedure case3;
  var i : longint;
  begin
    for i := 1 to n do
      if (f[i,2] <> 0) and (res < p[i] + p[f[i,1]] + p[f[i,2]]) then
        begin
          res := p[i] + p[f[i,1]] + p[f[i,2]];
          cnt := 3;
          tc[1] := f[i,1];
          tc[2] := i;
          tc[3] := f[i,2];
        end;
  end;

procedure case4;
  var i,j1,j2 : longint;
  begin
    for i := 1 to m do
      for j1 := 1 to 3 do
        if (f[a[i],j1] <> 0) and (f[a[i],j1] <> b[i]) then
          for j2 := 1 to 3 do
            if (f[b[i],j2] <> 0) and (f[b[i],j2] <> f[a[i],j1]) and (f[b[i],j2] <> a[i]) then
              if res < p[f[a[i],j1]] + p[a[i]] + p[b[i]] + p[f[b[i],j2]] then
                begin
                  res := p[f[a[i],j1]] + p[a[i]] + p[b[i]] + p[f[b[i],j2]];
                  cnt := 4;
                  tc[1] := f[a[i],j1];
                  tc[2] := a[i];
                  tc[3] := b[i];
                  tc[4] := f[b[i],j2];
                end;
  end;

procedure process;
  begin
    case1;
    case2;
    case3;
    case4;
  end;

procedure print;
  var i : longint;
  begin
    assign(output,tfo);
    rewrite(output);
    writeln(cnt);
    for i := 1 to cnt do write(tc[i],' ');
    close(output);
  end;

begin
  enter;
  process;
  print;
end.