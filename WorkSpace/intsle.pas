const fi='intsle.inp';
      fo='intsle.out';
var n,i: byte;
    a1,b1,c1,a2,b2,c2: longint;

procedure xuli;
var Dx,Dy,D,x,y: longint;
begin
   D:=a1*b2-a2*b1;
   Dx:=c1*b2-b1*c2;
   Dy:=a1*c2-a2*c1;
   if ((a1=0) and (b1=0) and (c1=0)) or ((a2=0) and (b2=0) and (c2=0)) then writeln('NO SOLUTION')
   else
   if (D=Dx) and (Dx=Dy) and (Dy=0) then writeln('INFINITE')
    else
     if (D=0) and ((Dx<>0) or (Dy<>0)) then writeln('NO SOLUTION')
      else
       if D<>0 then
        begin
            x:=Dx mod D;
            y:=Dy mod D;
            if (x=0) and (y=0) then
             begin
              if (Dx/D=0) and (Dy/D=0) then writeln(0,#32,0)
               else
                writeln(Dx/d:0:0,' ',Dy/d:0:0)
             end
             else writeln('NO SOLUTION')
        end;
end;

begin
    assign(input,fi); reset(input);
    assign(output,fo); rewrite(output);
    readln(n);
    for i:=1 to n do
     begin
         readln(a1,b1,c1,a2,b2,c2);
         xuli;
     end;
    close(input);
    close(output);
end.
