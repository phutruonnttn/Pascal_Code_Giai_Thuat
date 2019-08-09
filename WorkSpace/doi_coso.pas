Program   Chuyen_co_so;
Const
  fi='digit.inp';
  fo='digit.out';
  nm = 1000;
Type
  Stack = array [0..nm] of  char;
Var
  f1,f2: text;
  B,Top: longint; N: int64;
  S: stack;
//------------
Procedure Push(x: char; Var  S: stack);
Begin
     inc(top); S[top]:= x;
End;
//------------
Procedure Pop(var x: char;Var  S:stack);
Begin
     if Top = 0 then exit;
     x:= s[Top]; dec(Top);
End;
{------------}
Procedure Change(Var N: Int64; B: integer);
Var
  x: char;
  hs: integer;
Begin
     Top:=0;
     While N>0 do
       Begin
            if N mod B >9 then hs:=55 else hs:=48;
            Push(chr(N mod B+ hs), S);
            N:= N div B;
       End;

     While Top>0 do
        Begin
             Pop(x,s);
             Write(f2,x);
        End;
End;
{---------Main---------}
Begin
    Assign(f1,fi); Reset(f1);
    Assign(f2,fo); Rewrite(f2);
    while not seekeof(f1) do
       Begin
            Readln(f1,N,B);
            Change(N,B);
            Writeln(f2);
       End;
    Close(f1); Close(f2);
End.
