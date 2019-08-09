uses crt;
const fi='Sort3mb.inp'; fo='Sort3mb.out';
var n: longint;
    a: array[1..1000000] of double;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do read(a[i]);
    close(input);
end;

procedure swap(var a,b: double);
var c: double;
begin
    c:=a;
    a:=b;
    b:=c;
end;

procedure quicksort(l,r: longint);
var i,j: longint; chot: double;
begin
    i:=l; j:=r;
    chot:=a[(l+r) div 2];
     repeat
         while a[i]<chot do inc(i);
         while a[j]>chot do dec(j);
         if i<=j then
          begin
              swap(a[i],a[j]);
              inc(i); dec(j);
          end;
     until i>j;
    if l<j then quicksort(l,j);
    if i<r then quicksort(i,r);
end;

procedure writef;
var i: longint;
begin
    assign(output,fo); rewrite(output);
    quicksort(1,n);
    for i:=1 to n do write(a[i],#32);
    close(output);
end;

begin
    readf;
    writef;
end.
