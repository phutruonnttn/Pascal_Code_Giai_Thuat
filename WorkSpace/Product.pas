program product;

const
  tfi = 'product.inp';
  tfo = 'product.out';

var
  n,res1,res2,t0,c0,t1,c1,t,c,l1,r1,l2,r2 : longint;
  a : array [1..400000] of longint;

procedure enter;
  var i : longint;
  begin
    assign(input,tfi);
    reset(input);
    read(n);
    res1 := -3;
    for i := 1 to n do
      begin
        read(a[i]);
        if res1 < a[i] then
          begin
            res1 := a[i];
            l1 := i;
            r1 := i;
          end;
      end;
    close(input);
  end;

procedure process;
  var i : longint;
  begin
    t0 := 0;
    c0 := 0;
    t1 := -1;
    c1 := 0;
    t := 0;
    c := 0;
    res2 := 0;
    for i := 1 to n do
      begin
        if abs(a[i]) = 2 then c := c + 1;
        if a[i] < 0 then t := 1 - t;
        if a[i] = 0 then
          begin
            t0 := i;
            c0 := 0;
            t1 := -1;
            c1 := 0;
            c := 0;
            t := 0;
            continue;
          end;
        if t = 1 then
          begin
            if t1 = -1 then
              begin
                t1 := i;
                c1 := c;
              end
            else
            if res2 < c - c1 then
              begin
                res2 := c - c1;
                l2 := t1 + 1;
                r2 := i;
              end;
          end
        else
        if res2 < c - c0 then
          begin
            res2 := c - c0;
            l2 := t0 + 1;
            r2 := i;
          end;
      end;
  end;

procedure print;
  begin
    assign(output,tfo);
    rewrite(output);
    if r2 <> 0 then write(l2,' ',r2)
    else write(l1,' ',r1);
    close(output);
  end;

begin
  enter;
  process;
  print;
end.
