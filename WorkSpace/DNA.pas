{$mode objfpc}
{$H+}
program dna;
uses crt;
const fi='DNA.inp';
      fo='DNA.out';
var n: longint;
    s: ansistring;

procedure readf;
begin
    assign(input,fi); reset(input);
    readln(n);
    readln(s);
    close(input);
end;

procedure xuli;
var i,d,j: longint;
begin
   d:=0; s:='0'+s;
   for i:=n+1 downto 1 do
    begin
        if (s[i]='B') and (s[i-1]='0') then d:=d+1;
        if (s[i]='B') and (s[i-1]='A') then
         begin
            s[i]:='A';
            d:=d+1;
         end;
        if (s[i]='B') and (s[i-1]='B') then
         begin
            for j:=2 to i do
             if s[j]='A' then s[j]:='B'
              else s[j]:='A';
            d:=d+1;
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
    clrscr;
    readf;
    writef
end.