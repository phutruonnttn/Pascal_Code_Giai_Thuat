const fi='';
      fo='';
var w,wc: string;
    n,gtri1,k,q,l: longint;
    gtri: array[1..10] of longint;

procedure truyvan1(a,b,c: longint);
var s1,s2: string; i: longint;
begin
   s1:=''; s2:='';
   for i:=a to b do
    s1:=s1+w[i];
   for i:=c to b-a+c do
    s2:=s2+w[i];
   if s1=s2 then writeln('Y')
    else writeln('N');
end;

procedure truyvan2(a,b,c: longint);
var s1,s2: string; i,d: longint;
begin
   s1:=''; s2:='';
   for i:=a to b do
    s1:=s1+w[i];
   for i:=c to b-a+c do
    s2:=s2+wc[i];
   d:=0;
   for i:=a to b do
    begin
        d:=d+1;
        w[i]:=s2[d];
    end;
end;

procedure truyvan3(a,b: longint);
var i: longint;
begin
    for i:=a to b do
     begin
         if w[i]='z' then w[i]:='a'
          else
           w[i]:=chr(ord(w[i])+1);
     end;
end;

procedure xuli;
begin
   if gtri[1]=1 then truyvan1(gtri[2],gtri[3],gtri[4])
    else
     if gtri[1]=2 then truyvan2(gtri[2],gtri[3],gtri[4])
      else truyvan3(gtri[2],gtri[3]);
end;

begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    readln(w); wc:=w;
    readln(q);
    n:=length(w);
    for l:=1 to q do
     begin
        read(gtri[1]);
        if gtri[1]=3  then read(gtri[2],gtri[3])
         else read(gtri[2],gtri[3],gtri[4]);
        readln;
        xuli;
     end;
   close(input); close(output);
end.