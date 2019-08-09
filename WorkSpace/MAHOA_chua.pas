const
   tfi                  =       'MAHOA.INP';
   tfo                  =       'MAHOA.OUT';
   maxN                 =       1000;
   maxM                 =       250;

var
   fi,fo                :       text;
   N                    :       integer;
   P,P1                 :       array[1..maxN] of integer;
   R,R1                 :       array[1..maxN] of integer;
   C,C1                 :       array[1..maxN] of char;
   S                    :       string;

   F                    :       array[1..maxM] of integer;
   T                    :       array[1..maxM] of integer;
   M                    :       integer;

procedure Docdl;
var i: integer;
begin
   readln(fi,N);
   for i:=1 to N do
      begin
         read(fi,P[i]);
         if P[i]>0 then readln(fi,R[i]) else
            begin
               repeat read(fi,c[i]) until c[i]<>#32;
               readln(fi);
            end;
      end;
end;

procedure Cau1;
var i,k: integer;
begin
   S:=''; {bat dau bang xau rong}
   for i:=1 to N do
      if P[i]=0 then S:=S+C[i] else
         begin
            k:=length(S)-P[i]+1;
            S:=S+copy(S,k,R[i]);
         end;
   writeln(fo,S);
end;

procedure Tim(i,j: integer; var u,v: integer);
var S1, S2: string;
begin
   S1:=copy(S,1,j-1);
   S2:=copy(S,j,i-j+1);
   u:=pos(S2,S1);
   if u>0 then
      begin
         u:=length(S1)-u+1;
         v:=length(S2);
      end;
end;

procedure Cau2;
var i,j,u,v: integer;
begin
   {Qui hoach tim F}
   F[1]:=1;
   T[1]:=0;
   M:=length(S);
   for i:=2 to M do
      begin
         F[i]:=F[i-1]+1;
         T[i]:=i-1;
         for j:=i-1 downto 2 do
            begin
               Tim(i,j,u,v);
               if (u>0) and (F[i]>F[j-1]+1) then
                  begin
                     F[i]:=F[j-1]+1;
                     T[i]:=j-1;
                  end;
            end;
      end;
   {Lat nguoc tim bang}
   u:=M;
   for i:=F[M] downto 1 do
      begin
         if T[u]=u-1 then
            begin
               P1[i]:=0;
               C1[i]:=S[u];
            end
         else Tim(u,T[u]+1,P1[i],R1[i]);
         u:=T[u];
      end;
   writeln(fo,F[m]);
   for i:=1 to F[m] do
      begin
         write(fo,P1[i],' ');
         if P1[i]=0 then writeln(fo,C1[i]) else writeln(fo,R1[i]);
      end;
end;

BEGIN
   assign(fi,tfi); reset(fi);
   assign(fo,tfo); rewrite(fo);
   //Docdl;
   //Cau1;
   realn(f1,s);
   Cau2;
   close(fi); close(fo);
END.

