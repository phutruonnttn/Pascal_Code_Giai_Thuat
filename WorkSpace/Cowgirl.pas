Const
        finp='asd111.inp';
        fout='ashdj44.out';
Type
        mat=array [0..30,0..32] of longint;
Var     f,a:mat;
        n,t,m,res:longint;
        fi,fo:text;

Procedure Doc;
        Begin
                Assign(fi,finp);
                Reset(fi);
                Assign(fo,fout);
                Rewrite(fo);
                Read(fi,t);
        end;

Function Getbit(k,x:longint):longint;
        Begin
                getbit:=(x shr (k-1)) and 1;
        end;

Procedure Doicho(Var x,y:longint);
        Var tg:longint;
        Begin
                tg:=x;
                x:=y;
                y:=tg;
        end;

Function Check(x,y:longint):boolean;
        Var i,l,t,sum:longint;
        Begin
                For i:=1 to n do a[1,i]:=getbit(i,x);
                For i:=1 to n do a[2,i]:=getbit(i,y);
                For i:=1 to n-1 do
                  Begin
                    sum:=a[1,i]+a[1,i+1]+a[2,i]+a[2,i+1];
                    If (sum=0) or (sum=4) then exit(false);
                  end;
                exit(true);
        end;

Procedure Lam;
        Var i,j,tt:longint;
        Begin
                While t<>0 do
                  Begin
                        Read(fi,m,n);
                        Fillchar(f,sizeof(f),0);
                        If m<n then Doicho(n,m);
                        For i:=0 to 1 shl n-1 do f[1,i]:=1;
                        For i:=2 to m do
                          For j:=0 to 1 shl n-1 do
                             For tt:=0 to 1 shl n-1 do
                                If Check(j,tt) then f[i,j]:=f[i,j]+f[i-1,tt];
                        res:=0;
                        For i:=0 to 1 shl n-1 do res:=res+f[m,i];
                        Writeln(fo,res);
                        dec(t);
                  end;
        end;

Procedure Inkq;
        Begin
                Close(fo);
                Close(fi);
        end;

        Begin
                Doc;
                Lam;
                Inkq;
        end.