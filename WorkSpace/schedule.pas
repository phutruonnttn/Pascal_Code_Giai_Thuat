const fi='schedule.inp';
      fo='schedule.out';
var n,d: longint;
    a,c,f,fm: array[1..10000] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    read(n,d);
    for i:=1 to n do readln(a[i],c[i]);
    close(input);
end;

procedure xuli;
var i,j,s,maxs,mins,minmin: longint; ok:boolean;
begin
    randomize; minmin:=high(longint);
    for i:=1 to 100000 do
    begin
     s:=0;
     for j:=1 to n do
      begin
         f[j]:=a[j]+random(c[j]-a[j]);
         s:=s+f[j];
      end;
      if s=d then
       begin
         maxs:=f[1];
         for j:=2 to n do
          if maxs<f[j] then maxs:=f[j];
         mins:=f[1];
         for j:=2 to n do
          if mins>f[j] then mins:=f[j];
         if (minmin>maxs-mins) and (maxs-mins<>0) then
          begin
            minmin:=maxs-mins;
            for j:=1 to n do
             fm[j]:=f[j];
          end;
       end;
    end;
    ok:=false;
        for i:=1 to n-1 do
         if (fm[i]=fm[i+1]) and (fm[i]=0) then ok:=true;
       if ok then writeln(-1) else
       for i:=1 to n do write(fm[i],#32);
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    //writeln(-1);
    xuli;
    close(output);
end;

begin
    readf;
    writef
end.
