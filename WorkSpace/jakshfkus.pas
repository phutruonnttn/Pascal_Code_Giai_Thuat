const fi='safsf.inp';
      fo='asdfa.out';
var n,i: longint;
    prime: array[0..100000] of byte;

procedure sangnt(n: longint);
var i,j: longint;
begin
    fillchar(prime,sizeof(prime),0);
    prime[1]:=1;
    for i:=2 to trunc(sqrt(n)) do
     if prime[i]=0 then
      begin
          j:=i*i;
          while j<=n do
           begin
               prime[j]:=1;
               j:=j+i;
           end;
      end;
end;

function ktnt(n: longint): boolean;
var k,sn: longint;
begin
    if (n=2) or (n=3) then exit(true);
    if (n=1)or (n mod 2=0) or (n mod 3=0) then exit(false);
    sn:=trunc(sqrt(n));
    k:=-1;
    repeat
      inc(k,6);
      if (n mod k=0) or (n mod (k+2)=0 ) then break;
    until k>sn;
    exit(k>sn);
end;

begin
    assign(input,fi); reset(input);
    readln(n);
    close(input);
    assign(output,fo); rewrite(output);
    {sangnt(n);
    for i:=1 to n do
     if prime[i]=0 then write(i,#32);}
    if ktnt(n) then writeln('CO')
     else writeln('KHONG');
    close(output);
end.




























