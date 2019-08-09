const fi='password.inp';
      fo='password.out';
var t: string;
    prime: array[1..100007] of byte;

Procedure Timsnt(n: longint);
var i,j: longint;
begin
   fillchar(prime,sizeof(prime),0);
   prime[1]:=1 ;
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

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(t);
    close(input);
end;

procedure xuli;
var i: longint; ss: string;
begin
    Timsnt(100007);
    for i:=100000 downto 1 do
     if prime[i]=0 then
      begin
          str(i,ss);
          if pos(ss,t) > 0 then
           begin
               writeln(ss);
               break;
           end;
      end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    readf;
    writef
end.
