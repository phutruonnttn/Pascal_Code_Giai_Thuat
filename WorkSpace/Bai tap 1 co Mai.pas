program bt;
const fi='st1.inp';
      fo='st1.out';
var f1,f2: text;
    s: string;
    i,d,j: longint;
    c: char; dem:longint;
Procedure Nhap;
begin
   assign(f1,fi); reset(f1);
   assign(f2,fo); rewrite(f2);
    readln(f1,s);
    read(f1,c);
end;

Procedure Xuat;
begin
    close(f1);
    close(f2);
end;

Begin
    Nhap;
    d:=0;
    for i:=1 to length(s) do
     if s[i]=c then d:=d+1;
    writeln(f2,d);

  { for j:=32 to 255 do
      begin
          d:=0;
          for i:=1 to length(s) do
           begin
               if chr(j)=s[i] then d:=d+1;
           end;
          if d<>0 then writeln(f2,chr(j),' ',d);
      end;}


for i:=32 to 255 do
    begin
          dem:=0;
        for j:=1 to length(s) do
         if chr(i)=s[j] then dem:=dem+1;
         if dem<>0 then
         writeln(f2,chr(i),' ',dem);

    end;

     xuat;
end.