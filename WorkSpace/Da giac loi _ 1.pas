uses crt;
const maxN=100;
var N: Integer;
    X,Y: array[1..maxN] of Integer;
Procedure enter;
var i: integer;
begin
    readln(N);
    for i:=1 to n do readln(X[i],Y[i]);
end;
function Cungphia(x1,x2,x3,x4,y1,y2,y3,y4: Integer): boolean;
var a,b: Integer;
begin
    a:=(y3-y1)*(x2-x1) - (x3-x1)*(y2-y1);
    b:=(y3-y1)*(x2-x1) - (x4-y1)*(y2-y1);
    if a*b>=0 then exit(true) else exit(false);
end;
Procedure Process;
var i,j,K,L: Integer;
Begin
    For i:=1 to N do
      begin
        k:=i+2;
        l:=i+1;
        if k=n+1 then k:=1;
        if l=n+1 then l:=1;
        for j:=1 to N do
          if i<>j then
           if not Cungphia(X[i],X[L],X[j],X[K],Y[i],Y[L],Y[j],Y[k]) then
             begin
               Writeln('Khong phai DGL');
               exit;
             end;
      end;
    Writeln('DGL');
End;
Begin
    clrscr;
    enter;
    process;
End.