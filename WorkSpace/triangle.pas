const fi='';
      fo='';
var q,w,i,j,n: longint;
    a,b,c: array[1..1005] of longint;

procedure traloi;
var i,j,k,dem: longint;
begin
    dem:=0;
    if w=1 then
     begin
         for i:=1 to n do
          begin
           if a[i]>0 then
            for j:=1 to n do
             if (a[i]=b[j]) then
              for k:=1 to n do
               if b[j]=c[k] then inc(dem);
          end;
         writeln(dem);
     end;

    if w=2 then
     begin
         for i:=1 to n do
          if a[i]>0 then
           begin
               for j:=1 to n do
                if a[i]=b[j] then
                 for k:=1 to n do
                  if a[i]+b[j]>c[k] then inc(dem);
                 end;


         {for i:=1 to n do
          if b[i]>0 then
           begin
               for j:=1 to n do
                if b[i]=c[j] then
                 for k:=1 to n do
                  if b[i]+c[j]>a[k] then inc(dem);
                 end; }

         {for i:=1 to n do
          if a[i]>0 then
           begin
               for j:=1 to n do
                if a[i]=c[j] then
                 for k:=1 to n do
                  if a[i]+c[j]>b[k] then inc(dem);
           end;  }

         writeln(dem);
     end;

    if w=3 then
     begin
         for i:=1 to n do
          for j:=1 to n do
           for k:=1 to n do
            if (a[i]>0) and (b[j]>0) and (c[k]>0) and (a[i]+b[j]>c[k]) and (a[i]+c[k]>b[j]) and (b[j]+c[k]>a[i]) then
              inc(dem);
         writeln(dem);
     end;
end;

begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    readln(q);
    for i:=1 to q do
     begin
         readln(n,w);
         for j:=1 to n do read(a[j]);
         for j:=1 to n do read(b[j]);
         for j:=1 to n do read(c[j]);
         traloi;
     end;
    close(input); close(output);
end.