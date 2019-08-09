program volley;

uses math;

const
  tfi = 'volley.inp';
  tfo = 'volley.out';

var
  n,q,l,r,key : longint;
  a,a1,a2  : array [1..200010] of longint;

procedure enter;
  var i : longint;
  begin
    read(n);
    for i := 1 to n do read(a[i]);
  end;

procedure init;
  var i : longint;
  begin
    key := 0;
    l := 1;
    r := n;
    while a[l] <> n do
      begin
        inc(key);
        a1[key] := a[l];
        a2[key] := a[l+1];
        i := min(a[l],a[l+1]);
        a[l+1] := max(a[l],a[l+1]);
        a[r+1] := i;
        inc(l);
        inc(r);
      end;
  end;

procedure answer;
  var
    i : longint;
    k : int64;
  begin
    read(q);
    for i := 1 to q do
      begin
        read(k);
        if k <= key then writeln(a1[k],' ',a2[k])
        else
          begin
            k := (k - key) mod (n - 1);
            write(a[l],' ');
            if k = 0 then k := n - 1;
            writeln(a[l+k]);
          end;
      end;
  end;

begin
  assign(input,tfi); reset(input);
  assign(output,tfo); rewrite(output);
  enter;
  init;
  answer;
  close(input);
  close(output);
end.
