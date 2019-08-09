{$mode objfpc}
program hoan_vi_lap;
uses crt;
var n,dem: longint;
    d: array['A'..'Z'] of longint;
    s,p: string;


Procedure Gn;
begin
   inc(dem);
   writeln(p);
end;

procedure Hv_lap( i: integer);
var j: char;
begin
    for j:='A' to 'Z' do
     if d[j]>0 then
      begin
         p:=p+j;
         dec(d[j]);
         if i=n then Gn
          else Hv_lap(i+1);
         inc(d[j]);
         delete(p,i,1);
      end;
end;

procedure init;
var i: longint;
begin
     write('Nhap xau: '); readln(s);
     n:=length(s); dem:=0;
     fillchar(d,sizeof(d),0);
     for i:=1 to n do inc(d[s[i]]);
     p:='';
     hv_lap(1);
     writeln(dem);
end;

begin
    clrscr;
    init;
    readln
end.

