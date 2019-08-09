const fi='beaut.inp';
      fo='beaut.out';
var n: longint;
    a: array[0..100005] of byte;
    tong_truoc, Tong_sau: array[0..100005] of longint;

procedure readf;
var i: longint;
begin
    assign(input,fi); reset(input);
    fillchar(a,sizeof(a),0);
    readln(n);
    for i:=1 to n do read(a[i]);
    close(input);
end;

procedure xuli;
var i: longint; ok: boolean;
begin
   ok:=false;
   tong_truoc[0]:=0;
   for i:=1 to n do
    tong_truoc[i]:=tong_truoc[i-1]+a[i];
   tong_sau[n+1]:=0;
   for i:=n downto 1 do
    tong_sau[i]:=tong_sau[i+1]+a[i+1];
   for i:=1 to n do
    if tong_truoc[i]=tong_sau[i] then
     begin
      writeln(i);
      ok:=true;
      break;
     end;
   if not ok then writeln(-1);
end;

procedure writef;
begin
    assign(output,fo); rewrite(output);
    xuli;
    close(output);
end;

begin
    readf;
    writef
end.