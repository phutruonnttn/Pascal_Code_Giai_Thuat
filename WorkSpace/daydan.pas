Const max=100000;
      fi='daydan.inp';
      fo='daydan.out';
Var n,k,res:longint;
    l:array[1..max] of longint;
Procedure readf;
 Var i:longint;
  Begin
     assign(input,fi);
     reset(input);
     readln(input,n,k);
     For i:=1 to n do read(input,l[i]);
     Close(input);
  End;
Function isok(x1:longint):boolean;
  Var i,count:longint;
    Begin
      count:=0;
      For i:=1 to n do
        count:=count+l[i] div x1;
      isok:=count>=k;
    end;
Procedure try;
  Var i,x1,lmax:longint;
      sum:int64;
  Begin
    sum:=0;
    For i:=1 to n do sum:=sum+l[i];
    lmax:=sum div k;
    res:=0;
    For x1:=1 to lmax do
      If isok(x1) then res:=x1;
  end;
Procedure kq;
  Begin
    assign(output,fo);
    Rewrite(output);
    Writeln(output,res);
    Close(output);
  end;
BEGIN
        readf;
        try;
        kq;
END.
