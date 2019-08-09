uses crt;

var

a:array[1..20,1..20] of byte;

QUEUE, Chuaxet, Truoc: array[1..20] of byte;

i,j,n,solt,k,s,t: integer;

Stop: boolean;

Ch: char;

Procedure Nhapsolieu;

Begin

Write('Cho so dinh cua do thi:'); readln(n);

Writeln('Nhap so lieu ma tran ke:');

For i:= 1 to n do

Begin

For j:= i+1 to n do

Begin

Write('a[',i,',',j,']='); readln(a[i,j]);

End;

a[i,j]:=0; writeln;

End;

End;

{===========================}

Procedure readfile;

Var f:text; fn:string;

Begin

Write(' Cho ten file du lieu:'); readln (fn);

Assign(fnfn); reset(f); readln(f,n);

Writeln(`Nhap so lieu ma tran ke:');

For i:= 1 to n do

For j:=1 to n do read(f, a[i,j});

Close(f);

End;

{===========================}

Procedure Insolieu;

Begin

Writeln(`Ma tran ke:');

For i:= 1 to n do

Begin

For j:=1 to n do write(a[i,j]:3);

Writeln;

End;

End;

{===============================}

Procedure Ketqualienthon;

Begin

Insolieu;

If solt=1 then writeln(`Do thi la lien thong')

Else

Begin

Wriyeln(`Thanh phan lien thon thu `,i,' gom cac dinh:');

For j:=1 to n do if Chuaxet[j]=i then write(j:3); writeln;

End;

Write(`Go Enter de tiep tuc.'#7); readln;

End;

{========================================}

Procedure BFS(i:integer);

(*tim kiem theo chieu rong bat dau tu dinh i*);

var u, dauQ, CuoiQ,: integer;

begin

dauQ=1; cuoiQ:=1;

QUEUE[cuoiQ]:=i; Chuaxet[i]:=Solt;

While dauQ<=cuoiQ do

Begin

U:= QUEUE[sauQ]; dauQ:=dauQ+1;

For j:=1 to n do

If a[u,j]=1) and (Chuaxet[j]=0) then

Begin

cuoiQ:=cuoiQ+1; QUEUE:[cuoiQ]:=j;

Chuaxet[j]:=Solt; Truoc[j]:=u;

End;

End;

End; ? of procedure BFS ?

{==================================}

Procedure DFS(v:integer);

(*Tim kiem theo chieu sau bat dau tu dinh v*);

var U: integer;

begin

Chuaxet[v]:=solt;

For u:=1 to n do

If (a[v,u]=1) and (Chuaxet[u]=0) then

Begin

Truoc[u]:=v;

DFS9(u);

End;

End;

{=================================}

Procedure Lienthong;

Begin

? Khoi toa so lieu ?

for j:=1 to n do Chuaxet[j]:=0;

solt:=0;

for i:=1 to n do

if Chuaxet[i]=0 then

begin

solt:=solt+1;

? BFS(i); ? DFS(i);

end;

Ketqualienthong;

End;

{===============================}

Procedure Ketquaduongdi;

Begin

If Truoc[t]=0 then writeln(`Khong co duong di tu ', s,' den `,t)

Else

Begin

Writeln(`Duong di tu `,s,' den `,t,' la:');

J:=t;

Write(t,'<==');

While Truoc[j]<>s do

Begin

Write(Truoc[g],' <==');

J:=Truoc[j];

End;

Writeln(s);

End;

Write(`Go Enter de tiep tuc.'#7); readln;

End;

{============================}

Procedure duongdi;

Begin

Insolieu;

Write(`Tim duon di tu dinh:'); readln(s);

Write(` den dinh:'); readln(t);

For j:=1 to n do ? Khoi tao so lieu ?

Begin

Truoc[j[:=0;

Chuaxet[j]:=0;

End;

Silt:=1; BFS(s); ? DFS(s); ?

Ketquaduondi;

End;

{============================}

Procedure menu;

Begin

Clrscr;

Writeln(`TIM DUONG DI VA KIEM TRA TINH LIEN THONG');

Writeln(`CUA DO THIJ THEO THUAT TOAN TIM KIEM TREN DO THI');

Writeln(`===============================================');

Writeln(` 1. Nhap so lieu tu ban phim');

Writeln(` 2. Nhap so lieu tu file');

Writeln(` 3. Kiem tra tinh lien thong');

Writeln(` 4. Tim duong di giua hai dinh');

Writeln(` 5. Thoat');

Writeln(`--------------------------------------------------------------');

Write(`Hay go phim so de chon chuc nang.#7);

Ch:=readkey;

Writeln(ch);

End;

{===================================}

? Main program ?

Begin

repeat

menu;

case ch of

`1':Nhapsolieu;

`2':Readfile;

`3':Lienthong;

`4':Duongdi;

until (ch='5') or (upcase (ch)='Q);

End.