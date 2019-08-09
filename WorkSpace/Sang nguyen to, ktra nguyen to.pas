

prime: array[1..1000000] of byte;


Procedure Timsnt;
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

// Neu prime[x]=0 thi x la so nguyen to va nguoc lai.


function ktra_nguyento(n:longint):boolean;
var k,sqrt_n:longint;
begin
   if (n=2) or (n=3) then exit(true);
   if (n=1) or (n mod 2=0) or (n mod 3=0) then exit(false);
   sqrt_n:=trunc(sqrt(n));
   k:=-1;
   repeat
      inc(k,6);
      if (n mod k=0) or (n mod (k+2)=0) then break;
   until k>sqrt_n;
   exit(k>sqrt_n);
end;
