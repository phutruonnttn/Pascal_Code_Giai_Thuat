const fi='bai1.inp';
      fo='bai1.out';
var n: longint;
    a,b,c: array[1..10007] of longint;
    dd: array[1..10007] of boolean;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(n);
    for i:=1 to n do read(a[i]);
    close(input);
end;

procedure swap(var a,b: longint);
var tg: longint;
begin
    tg:=a;
    a:=b;
    b:=tg;
end;

procedure quicksort(d,c: longint);
var i,j,chot: longint;
begin
    i:=d; j:=c;
    chot:=a[(d+c) div 2];
    repeat
      while a[i]<chot do inc(i);
      while a[j]>chot do dec(j);
      if i<=j then
       begin
           swap(a[i],a[j]);
           inc(i); dec(j);
       end;
    until i<>j;
    if d<j then quicksort(d,j);
    if i<c then quicksort(i,c);
end;

procedure xuli;
var i,j: longint; x,y,d,z,t,k: int64;
begin
    {fillchar(dd,sizeof(dd),false);
    //quicksort(1,n);
    d:=0;
    for i:=1 to n do
     dd[a[i]]:=true;
    for i:=1 to n-1 do
     for j:=i+1 to n do
      begin
         x:=a[i]*a[i];
         y:=a[j]*a[j];
         z:=x+y;
         if sqr(trunc(sqrt(z)))=z then
          if dd[trunc(sqrt(z))] then
           //begin
             d:=d+1;
             //writeln(a[i],' ',a[j],' ',trunc(sqrt(z)));
           //end;
      end;     }
      quicksort(1,n);
    for i:=1 to n do begin b[a[i]]:=1;c[i]:=a[i]*a[i];end;
        d:=0;
        for i:=2 to n do
         for j:=1 to i-1 do
          begin
                t:=c[i]-c[j];
                if c[j]>=t then
                begin
                        k:=trunc(sqrt(t));
                        if (sqrt(t)=k)and(b[k]=1)then
                           begin
                                inc(d);
                           end;
                end;
          end;


    writeln(d);
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