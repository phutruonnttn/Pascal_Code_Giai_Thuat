{$mode objfpc}
program ricehub;
const fi='standard.inp';
      fo='standard.out';
var r,l,b,maxl: longint;
    x,f,thoc: array[1..1000000] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    readln(r,l,b);
    for i:=1 to r do
     readln(x[i]);
    close(input);
end;

procedure xuli;
var i,j,mt: longint;
begin
   fillchar(f,sizeof(f),0);
   fillchar(thoc,sizeof(thoc),0);
   maxl:=x[r];
   for i:=1 to maxl do
    begin
       for j:=1 to r do
        begin
            if i<>x[j] then
             begin
                 f[i]:=f[i]+abs(x[j]-i);
                 thoc[i]:=thoc[i]+1;
                 if f[i]>b then
                  begin
                      f[i]:=-1;
                      thoc[i]:=-1;
                      break;
                  end;
             end;
        end;
    end;
    //mt:=thoc[1];
    for i:=1 to maxl do
     //if mt<thoc[i] then mt:=thoc[i];
    writeln(thoc[i]);
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    readf;
    writef;
end.
