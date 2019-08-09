{$mode objfpc}
Program btvn5;
uses crt;
const fi='HV1.inp';
      fo='HV1.out';
var s: string;
    n,i,j,d: integer;
    x,b: array[1..50] of byte;
    a: array[1..100000000] of string[10];

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(s);
    close(input);
    n:= length(s);
    fillchar(b,sizeof(b),0);
end;

procedure ghinhan;
begin
    d:=d+1; a[d]:='';
    for i:=1 to n do a[d]:=a[d]+s[x[i]];
end;

procedure chinhhopkl(i: integer);
var j: integer;
begin
   for j:=1 to n do
    if b[j]=0 then
     begin
         x[i]:=j;
         b[j]:=1;
         if i=n then ghinhan
          else chinhhopkl(i+1);
         b[j]:=0;
     end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    d:=0;
    chinhhopkl(1);
    for i:=2 to d-1 do
     for j:=i+1 to d do
       if (a[i]=a[j]) and (a[i]<>'0') and (a[j]<>'0') then a[j]:='0';
    for i:=2 to d do
     if a[i]<>'0' then writeln(a[i]);
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.