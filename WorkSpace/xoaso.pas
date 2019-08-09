{$mode objfpc}
Program Xoa_so;
const fi='xoaso.inp';
      fo='xoaso.out';
var p,k:longint; n:ansistring;
    a:array[1..1000] of longint;
    s:array[1..1000] of ansistring;
//----------------------------------
procedure readf;
var i:longint;
begin
    assign(input,fi); reset(input);
    readln(p,k);
    for i:=1 to p do
     begin
        readln(a[i],s[i]);
        delete(s[i],1,1);
     end;
    close(input);
end;

procedure taoso;
var i,j:longint;
begin
    n:='';
    for i:=1 to p do
        for j:=1 to a[i] do
                n:=n+s[i];

end;
//----------------------------------

function timmax(a:ansistring;x,y:longint):ansistring;
var i:longint; max:ansistring;
begin
    max:=a[x];
    for i:=x to y do
        if a[i]>max then max:=a[i];
    timmax:=max;
end;
//----------------------------------
function timmin(a:ansistring;x,y:longint):ansistring;
var i:longint; min:ansistring;
begin
    min:=a[x];
    for i:=x to y do
        if a[i]<min then min:=a[i];
    timmin:=min;
end;
//----------------------------------

function lonnhat(n:ansistring;k:longint):ansistring;
var i:longint; max,min:ansistring;
begin
    max:=timmax(n,1,length(n));
    while (k<>0) {and (n[1]<>max)} do
        begin
            k:=k-1;
            if n[1]<>max then
                min:=timmin(n,1,pos(max,n)-1)
                else min:=timmin(n,2,length(n));
            delete(n,pos(min,n),1);
        end;
    lonnhat:=n;
end;
//----------------------------------
function nhonhat(n:ansistring;k:longint):ansistring;
var i:longint; max,min:ansistring;
begin
    min:=timmin(n,1,length(n));
    while k<>0 do
        begin
            k:=k-1;
            if n[1]<>min then
                max:=timmax(n,1,pos(min,n)-1)
            else max:=timmin(n,2,length(n));
        delete(n,pos(max,n),1);
        end;
    while (length(n)>1) and (n[1]='0') do
        delete(n,1,1);
    nhonhat:=n;
end;
//----------------------------------

procedure chuanhoa(var a,b:ansistring);
begin
    while length(a) < length(b) do
        a:='0'+a;
    while length(a) > length(b) do
        b:='0'+b;
end;
//----------------------------------

function add(a,b:ansistring):ansistring;
var nho,i,s,x,y:longint; c:ansistring;
begin
    chuanhoa(a,b);
    nho:=0; c:='';
    for i:=length(a) downto 1 do
        begin
           x:=ord(a[i])-48;
           y:=ord(b[i])-48;
           s:=x+y+nho;
           nho:=s div 10;
           c:=chr(s mod 10+48)+c;
        end;
    if nho>0 then c:='1'+c;
    add:=c;

end;
//----------------------------------

function mul1(a,b:ansistring):ansistring;
var nho,s,i,k,x:longint; c,tam:ansistring;
begin
    val(b,k,x);
    nho:=0; c:='';
    for i:=length(a) downto 1 do
        begin
            s:=(ord(a[i])-48)*k+nho;
            nho:=s div 10;
            c:=chr(s mod 10+48)+c;
        end;
    if nho>0 then str(nho,tam) else tam:='';
    c:=tam+c;
    mul1:=c;
end;
//----------------------------------

function mul2(a,b:ansistring):ansistring;
var i,j,k:longint; c,s:ansistring;
begin
    k:=-1;c:='';
    for i:=length(b) downto 1 do
        begin
            s:=mul1(a,b[i]);
            k:=k+1;
            for j:=1 to k do
                s:=s+'0';
            c:=add(c,s);
        end;
    while (length(c)>1) and (c[1]='0') do delete(c,1,1);
    mul2:=c;
end;
//----------------------------------
procedure writef;
var i:longint;  x,y:ansistring;
begin
    assign(output,fo); rewrite(output);
    taoso;
    writeln(nhonhat(n,k));
    writeln(lonnhat(n,k));

    writeln(mul2(lonnhat(n,k),nhonhat(n,k)));
    close(output);
end;
//----------------------------------
begin
    readf;
    writef;
end.
