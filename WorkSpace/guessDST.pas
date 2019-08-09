const fi='guessDST.inp';
      fo='guessDST.out';
var n,a,m,l: byte;
    v,r: array[1..100] of byte;

procedure readf;
var i: byte;
begin
   assign(input,fi); reset(input);
   readln(n);
   m:=0; l:=0;
   for i:=1 to n do
    begin
       read(a);
       if a=1 then
        begin
         m:=m+1;
         readln(v[m]);
        end
       else
        begin
            l:=l+1;
            readln(r[l]);
        end;
    end;
    close(input);
end;

function ktra_queue: boolean;
var i: byte;
begin
   for i:=1 to m do
    if v[i]<>r[i] then exit(false);
   exit(true);
end;

function ktra_stack: boolean;
var i: byte;
begin
    for i:=1 to m do
     if v[i]<>r[m-i+1] then exit(false);
    exit(true);
end;

function ktra_priority: boolean;
var i: byte;
begin
   for i:=1 to l-1 do
    if r[i]<r[i+1] then exit(false);
   exit(true);
end;

function ktra_impossible: boolean;
var i,j,k: byte;
begin
   for i:=1 to m do
    begin
        for j:=1 to l do
         if v[i]=r[j] then k:=1
          else
           begin
               k:=0;
               break;
           end;
         if k=0 then exit(true);
    end;
   exit(false);
end;

procedure ktra;
begin

    if (ktra_queue and ktra_priority) or (ktra_stack and ktra_priority) then writeln('not sure')
     else
      if ktra_queue then writeln('queue')
       else
        if ktra_stack then writeln('stack')
         else
          if ktra_priority then writeln('priority queue')
           else
            if (not ktra_queue) and (not ktra_stack) and {(not ktra_priority) and} ktra_impossible then writeln('impossible');
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    ktra;
    close(output);
end;

begin
    readf;
    writef;
end.

























