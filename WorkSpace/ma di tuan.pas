Program MadiTuan;
Const Max = 7;
Type ItemRec = Record

x, y : Integer;

huong : Integer;

End;


Var Banco: Array [0..7,0..7] of Integer;

Nuocdi: Array [0..63] of ItemRec;

SoNuocdi : Integer;

cach : Integer;

Procedure Khoidong;

Var i,j : Integer;

Begin

cach := 0;

for i:=0 to Max do

for j:= 0 to Max do

Banco[i,j] := -1;

write(`Nh�?p to?a d�? ha`ng chu'a con ma~ : `);

readln(Nuocdi[0].y);

write(`Nh�?p to?a d�? c�?t chu'a con ma~ : `);

readln(Nuocdi[0].x);

Nuocdi[0].huong := 0;

{Thi�'t l�?p nuo'c di d�`u ti�n cu?a con ma~}

SoNuocdi :=0;

Banco[Nuocdi[SoNuocdi].x,Nuocdi[SoNuocdi].y] := 0;

End;



{In k�'t qua? con ma~ di tr�n ba`n co`}

Procedure InKetqua;

Var h,c : Integer;

Begin

cach := cach + 1;

writeln(`Ca'ch di thu' : `,cach);

for h:= 0 to Max do begin

{ Hi�?n thi? ha`ng luo'i ngang ba`n co` }

for c:= 0 to Max do write(`+--');

writeln(`+');

{ Hi�?n thi? n�?i dung ha`ng thu' h ba`n co` }

for c:= 0 to Max do

write(`| `,Banco[h,c]:2,' `);

writeln(`|');

end;

{Hi�?n thi? ha`ng luo'i ngang ba`n co` cu�'i cu`ng}

for c:= 0 to Max do write(`+--');

writeln(`+');

{readln;}

End;



{Thu? tu?c ti`m nuo'c di k�' ti�'p}

Function TimNuocKe : Boolean;

Var x, y : Integer;

RetVal : Boolean;

Begin

RetVal := False;

Repeat {la?p ti`m nuo'c di k�' ti�'p d�'n khi ti`m duo?c hoa?c h�'t ca'ch di}

while (RetVal=False) and (Nuocdi[SoNuocdi].huong < Cool do begin

Case Nuocdi[SoNuocdi].huong of {thu? huo'ng di hi�?n ta?i}

0 : begin

x := Nuocdi[SoNuocdi].x + 2;

y := Nuocdi[SoNuocdi].y - 1;

end;

1 : begin

x := Nuocdi[SoNuocdi].x + 1;

y := Nuocdi[SoNuocdi].y - 2;

end;

2 : begin

x := Nuocdi[SoNuocdi].x - 1;

y := Nuocdi[SoNuocdi].y - 2;

end;

3 : begin

x := Nuocdi[SoNuocdi].x - 2;

y := Nuocdi[SoNuocdi].y - 1;

end;

4 : begin;

x := Nuocdi[SoNuocdi].x - 2;

y := Nuocdi[SoNuocdi].y + 1;

end;

5 : begin

x := Nuocdi[SoNuocdi].x - 1;

y := Nuocdi[SoNuocdi].y + 2;

end;

6 : begin

x := Nuocdi[SoNuocdi].x + 1;

y := Nuocdi[SoNuocdi].y + 2;

end;

7 : begin

x := Nuocdi[SoNuocdi].x + 2;

y := Nuocdi[SoNuocdi].y + 1;

end

End;

if (0<=x) and (x<=Max) and (0<=y) and (y<=Max) and (Banco[x,y]=-1) then begin

{n�'u duo?c thi` ghi nh�?n}

SoNuocdi := SoNuocdi + 1;

Banco[x,y] := SoNuocdi;

Nuocdi[SoNuocdi].x := x;

Nuocdi[SoNuocdi].y := y;

Nuocdi[SoNuocdi].huong := 0;

RetVal:=True;

end else

{n�'u kh�ng duo?c thi` thu? huo'ng k�' ti�'p}

Nuocdi[SoNuocdi].huong := Nuocdi[SoNuocdi].huong + 1;

end;

if (RetVal=False) and (SoNuocdi <> 0) then begin

{n�'u kh�ng ti`m duo?c nuo'c di k�' thi` lu`i con ma~ la?i 1 buo'c}

Banco[Nuocdi[SoNuocdi].x,Nuocdi[SoNuocdi].y] := -1;

SoNuocdi := SoNuocdi - 1;

Nuocdi[SoNuocdi].huong := Nuocdi[SoNuocdi].huong + 1;

end

until RetVal or (SoNuocdi = 0);

TimNuocKe := RetVal;

End;



{Chuong tri`nh chi'nh}

Begin

Khoidong;

while TimNuocKe do begin

if SoNuocdi = (Max+1)*(Max+1)-1 then begin

{n�'u ti`m duo?c 1 nghi�?m}

InKetqua;

Banco[Nuocdi[SoNuocdi].x,Nuocdi[SoNuocdi].y] := -1;

SoNuocdi := SoNuocdi -1;

Nuocdi[SoNuocdi].huong := Nuocdi[SoNuocdi].huong + 1;

end

end

End.
