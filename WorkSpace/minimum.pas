const fi='minimum.inp';
      fo='minimum.out';
type mang= array[1..1000000] of longint;
var n,k: longint;
    a,b: mang;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n,k);
    for i:=1 to n do
     read(a[i]);
    close(input)
end;

procedure swap(var a,b: longint);
var c: longint;
begin
    c:=a;
    a:=b;
    b:=c;
end;

procedure quicksort(l,r: longint);
var i,j,chot: longint;
begin
    i:=l; j:=r;
    chot:=b[(l+r) div 2];
    repeat
         while b[i]<chot do inc(i);
         while b[j]>chot do dec(j);
         if i<=j then
          begin
              swap(b[i],b[j]);
              inc(i); dec(j);
          end;
    until i>j;
    if l<j then quicksort(l,j);
    if i<r then quicksort(i,r);
end;

procedure xuli;
var i,j: longint; ok: boolean;
begin
   ok:=true;
   for i:=1 to n-1 do
    if a[i]<>a[i+1] then
     begin
    ok:=false;
    break;
    end;
    if ok then
     for i:=1 to n-k+1 do writeln(a[1])
   else
   begin
   for i:=1 to n-k+1 do
    begin
        for j:=i to i+k-1 do
         b[j]:=a[j];
        quicksort(i,i+k-1);
        writeln(b[i]);
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