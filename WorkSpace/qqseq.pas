const fi='qqseq.inp';
      fo='qqseq.out';
var n,i,okk,hang: longint; ok : boolean;
    a,t,b: array[1..10000000] of longint;
    dd: array[1..10000000] of boolean;

procedure xuli;
var i,d,j,ddd: longint;
begin
   fillchar(dd,sizeof(dd),true);
   for i:=1 to n do
    begin
        d:=0; ddd:=0;
        for j:=1 to n do
         begin
            ddd:=ddd+1;
            if dd[j] then d:=d+1;

            if d=(a[i]+1) then
             begin
                 dd[ddd]:=false;
                 b[ddd+hang]:=i;
                 break;
             end;


         end;
    end;
   //writeln(hang);
   //hang:=hang+n;
   for i:=1 to n-1 do
    write(b[i],','); write(b[n]);
    writeln;
end;

begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    ok:=true; hang:=0;
    readln(okk);
    while ok do
     begin
         n:=okk;
         for i:=1 to n do
          readln(a[i]);
         xuli;
         readln(okk);
         if okk=0 then ok:=false;
     end;
    //for i:=1 to hang-1 do
     //write(b[i],',');  write(b[hang]);
    close(input); close(output);
end.