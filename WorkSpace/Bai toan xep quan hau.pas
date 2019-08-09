{$mode objfpc}
Program Xep_quan_hau;
uses crt;
const fi='quanhau.inp';
      fo='quanhau.out';
      maxn=100000;
var n,i: longint;
    x: array[1..maxn] of longint;
    a: array[1..maxn] of boolean;
    b: array[2..2*maxn] of boolean;
    c: array[1-maxn..maxn-1] of boolean;
    d:boolean;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n);
    close(input);
end;

Procedure ghinhan;
var i: longint;
begin
   d:=true;
   for i:=1 to n do write(x[i],' ');
   writeln;
end;

procedure tryy(i: longint);
var j: longint;
begin
    for j:=1 to n do
     if (a[j]=true) and (b[i+j]=true) and (c[i-j]=true) then
      begin
       x[i]:=j;
       if i=n then ghinhan
        else
         begin
          a[j]:=false;
          b[i+j]:=false;
          c[i-j]:=false;
          tryy(i+1);
          a[j]:=true;
          b[i+j]:=true;
          c[i-j]:=true;
         end;
      end;
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    d:=false;
    for i:=1 to maxn do a[i]:=true;
    for i:=2 to 2*maxn do b[i]:=true;
    for i:=1-maxn to maxn-1 do c[i]:=true;
    tryy(1);
    if not d then write('Khong co cach xep nao.');
    close(output);
end;

begin
    clrscr;
    readf;
    writef;
end.
