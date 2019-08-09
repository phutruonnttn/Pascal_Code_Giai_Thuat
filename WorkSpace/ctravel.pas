const fi='asdasfhj.inp';
      fo='asdas.out';
var m,n,t,r1,c1,r2,c2,done,tg: byte;
    a: array[1..105,1..105] of byte;

procedure readf;
var i,j: byte;
    b: string;
begin
    assign(input,fi); reset(input);
    readln(m,n,t);
    for i:=1 to m do
     begin
         readln(b);
         for j:=1 to n do
          if b[j]='.' then a[i,j]:=0
           else a[i,j]:=1;
     end;
    readln(r1,c1,r2,c2);
    close(input);
end;

procedure backtrack(i,j: byte);
begin
   if (i>0) and (j>0) and (a[i,j]<>1) and (tg<=t) then
    begin
       inc(tg);
       backtrack(i+1,j);
       dec(tg);
       if (i=r2) and (j=c2) and (tg=t) then inc(done);
       inc(tg);
       backtrack(i-1,j);
       dec(tg);
       if (i=r2) and (j=c2) and (tg=t) then inc(done);
       inc(tg);
       backtrack(i,j+1);
       dec(tg);
       if (i=r2) and (j=c2) and (tg=t) then inc(done);
       inc(tg);
       backtrack(i,j-1);
       dec(tg);
       if (i=r2) and (j=c2) and (tg=t) then inc(done);
    end;
end;

procedure writef;
var i,j: byte;
begin
    assign(output,fo); rewrite(output);
    tg:=0;
    done:=0;
    backtrack(r1,c1);
    writeln(done);
    close(output);
end;

begin
    readf;
    writef
end.