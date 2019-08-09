{$mde objfpc}
program bai2;
uses crt;
const fi='bait2.inp';
      fo='bait2.out';
var n,u,v: integer;
    x,y: array[0..5005] of integer;

procedure readf;
var i: integer;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do readln(x[i],y[i]);
    readln(u,v);
    close(input);
end;

function kt(a,b: integer): boolean;
var i,j: integer; m: longint;
begin
   for i:=1 to n do
    if (i<>a) and (i<>b) then
     begin
         m:=(y[b]-y[a])*x[i]+(x[a]-x[b])*y[i]-x[a]*(y[b]-y[a])-y[a]*(x[a]-x[b]);
         if m>0 then j:=1
          else
           if m=0 then exit(false)
            else j:=-1;
         break;
     end;
    for i:=1 to n do
    if (i<>a) and (i<>b) then
     begin
         m:=(y[b]-y[a])*x[i]+(x[a]-x[b])*y[i]-x[a]*(y[b]-y[a])-y[a]*(x[a]-x[b]);
         if m<0 then m:=-1
          else if m=0 then exit(false)
           else m:=1;
         if m<>j then exit(false);
     end;
    exit(true);
end;

procedure xuli;
var i,d: integer; ok: boolean;
begin
   ok:=true;
   for i:=1 to n-1 do
    if not kt(i,i+1) then
     begin
         ok:=false;
         break;
     end;
   if ok then writeln('CO')
    else writeln('KHONG');
   d:=0;
   for i:=1 to n do
    if ((y[i+1]-y[i])*(-u))<>(x[i]-x[i+1])*v then d:=d+1;
   if d mod 2=1 then writeln('TRONG')
    else writeln('NGOAI');
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    clrscr;
    readf;
    writef
end.
