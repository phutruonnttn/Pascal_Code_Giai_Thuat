{$mode objfpc}
Program SX_Combsort;
uses math;
const fi='';
      fo='';
var a: array[1..1000000] of longint;
    n: longint;

procedure readf;
var i: longint;
begin
   assign(input,fi); reset(input);
   i:=0;
   {while not seekeof(input) do
    begin
        i:=i+1;
        read(a[i]);
    end;
   n:=i;
   close(input);}
   while not seekeoln(input) do
    begin
        i:=i+1;
        read(a[i]);
    end;
   n:=i;
   close(input);
end;

procedure swap(var a,b: longint);
var c: longint;
begin
    c:=a;
    a:=b;
    b:=c;
end;

procedure combsort;
var g,i: longint;
    swapped: boolean;
begin
    g:=n;
    repeat
     g:=max(g*10 div 13,1); // trunc(g / 1.3)
     swapped:= false;
     for i:=1 to n-g do
      if a[i]>a[i+g] then
       begin
           swap(a[i],a[i+g]);
           swapped:= true;
       end;
    until (g=1) and (not swapped);
end;

procedure writef;
var i: longint;
begin
    assign(output,fo); rewrite(output);
    combsort;
    for i:=1 to n do write(a[i],#32);
    close(output);
end;

begin
    readf;
    writef;
end.