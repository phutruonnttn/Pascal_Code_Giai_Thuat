Program bt2;
uses crt;
const fi='st2.inp' ;
      fo='st2.out';
var s: string;
    n,j,k,d,i: byte;
    found: boolean;
Procedure Readf;
begin
    assign(input,fi); reset(input);
    readln(s); readln(k);
    close(input);
end;

Function Xoa: boolean;
begin
     for i:=1 to length(s)-1 do
       while s[i]=s[i+1] do exit(true);
     exit(false) ;
end;

Procedure Xuli;
begin
   n:= length(s);  found:=false;
   for i:=1 to n do
    begin
        d:=0;
        for j:=1 to n do
         if (i<>j) and (s[i]=s[j]) then d:=d+1;
        if d=k then
         begin
             found:=true;
             break;
         end;
    end;
   if found=false then writeln(0) else writeln(1);
   while xoa do delete(s,i,1);
   writeln(s);
end;

Procedure Writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

Begin
    Readf;
    writef;
end.
