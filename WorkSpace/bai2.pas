program Bai_2;
uses crt;
const fi='input1.txt'; fo='output1.txt';
var i,n:integer; f1,f2: text;
begin
    clrscr;
    assign(f1,fi);
    reset(f1);
    assign(f2,fo);
    rewrite(f2);
    while not eof(f1) do
    begin
      readln(f1,n);
      i:=2;
      repeat
      while n mod i<>0 do
      i:=i+1;
      write(f2,i);
      n:=n div i;
      if n>1 then write(f2,' ');
      until n=1;
      writeln(f2);
    end;
    close(f1);
    close(f2);
    readln
end.
