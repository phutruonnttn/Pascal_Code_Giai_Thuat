{$H+}
const fi='';
      fo='';
var n: int64;  s: ansistring; i: longint;
    f,c: array[0..10007] of ansistring;
    //f,c: array[0..10007] of qword;

procedure Chuanhoa(var a,b: ansistring);
begin
    while length(a) < length(b) do a:='0'+a;
    while length(a) > length(b) do b:='0'+b;
end;

Function add(a,b: ansistring): ansistring;
var c: ansistring;
    nho,s,x,y,i: longint;
begin
   c:=''; nho:=0;
   chuanhoa(a,b);
   for i:=length(a) downto 1 do
    begin
        x:=ord(a[i])-48;
        y:=ord(b[i])-48;
        s:=x+y+nho;
        nho:=s div 10;
        c:=chr(s mod 10 +48) +c;
    end;
   if nho>0 then c:='1'+c;
   add:=c;
end;

Function Mul1(a:ansistring;b:longint): ansistring;
var c,tamp: ansistring;
    s,nho,i: longint;
Begin
    c:=''; nho:=0;
    for i:=length(a) downto 1 do
     begin
         s:=(ord(a[i])-48)*b+nho;
         nho:=s div 10;
         c:=chr(s mod 10 +48) +c;
     end;
    if nho>0 then str(nho,tamp)
     else tamp:='' ;
    c:=tamp+c ;
    mul1:=c;
end;

begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    readln(s);
    n:=length(s);
    f[0]:='1'; c[0]:='1';
    for i:=1 to n do
     begin
         if s[i]='L' then
          begin
              f[i]:=mul1(f[i-1],2);
              c[i]:=c[i-1];
          end;

         if s[i]='R' then
          begin
              f[i]:=add(mul1(f[i-1],2),c[i-1]);
              c[i]:=c[i-1];
          end;

         if s[i]='P' then
          begin
              f[i]:=f[i-1];
              c[i]:=c[i-1];
          end;

         if s[i]='*' then
          begin
              c[i]:=mul1(c[i-1],3);
              f[i]:=add(mul1(f[i-1],5),c[i-1]);
          end;

     end;


    {f[0]:=1; c[0]:=1;
    for i:=1 to n do
     begin
         if s[i]='L' then
          begin
              f[i]:=f[i-1]*2;
              c[i]:=c[i-1];
          end;

         if s[i]='R' then
          begin
              f[i]:=f[i-1]*2+c[i-1];
              c[i]:=c[i-1];
          end;

         if s[i]='P' then
          begin
              f[i]:=f[i-1];
              c[i]:=c[i-1];
          end;

         if s[i]='*' then
          begin
              c[i]:=c[i-1]*3;
              f[i]:=f[i-1]*5+c[i-1];
          end;

     end;   }




   writeln(f[n]);
   close(input); close(output);
end.


















