program Shortest_Path_by_Dijkstra;
const
   InputFile = 'MINPATH.INP';
   OutputFile = 'MINPATH.OUT';
   max = 1000;
   maxEC = 1000;
   maxC = max * maxEC;
var
   c: array[1..max, 1..max] of longint;
   d: array[1..max] of longint;
   Trace: array[1..max] of Integer;
   Free: array[1..max] of Boolean; {Free[u] = True?? u c¢ nhan t? do}
   n, s, f: Integer;

procedure LoadGraph; {Nh?p d? th?, tr?ng s? c†c cung ph?i lÖ s? khìng Ém}
var
   i, m, u, v: Integer;
   fi: Text;
begin
   Assign(fi, InputFile); Reset(fi);
   ReadLn(fi, n, m, s, f);
   for u := 1 to n do
      for v := 1 to n do
   if u = v then c[u, v] := 0 else c[u, v] := maxC;
   for i := 1 to m do ReadLn(fi, u, v, c[u, v]);
   Close(fi);
end;


procedure Init; {Kh?i t?o c†c nhan d[v], c†c d?nh d?u du?c coi lÖ t? do}
var
   i: Integer;
begin
   for i := 1 to n do d[i] := MaxC;
   d[s] := 0;
   FillChar(Free, SizeOf(Free), True);
end;

procedure Dijkstra; {Thu?t to†n Dijkstra}
var
   i, u, v: Integer;
   min: longint;
begin
   repeat
   {Tçm trong c†c d?nh c¢ nhan t? do ra d?nh u c¢ d[u] nh? nh?t}
      u := 0; min := maxC;
      for i := 1 to n do
         if Free[i] and (d[i] < min) then
            begin
               min := d[i];
               u := i;
            end;
            {Thu?t to†n s? k?t th£c khi c†c d?nh t? do d?u c¢ nhan +Ï ho?c da ch?n d?n d?nh f}
      if (u = 0) or (u = f) then Break;
            {C? d?nh nhan d?nh u}
      Free[u] := False;
            {Dóng d?nh u t?i uu nhan nh?ng d?nh t? do k? v?i u}
      for v := 1 to n do
         if Free[v] and (d[v] > d[u] + c[u, v]) then
            begin
               d[v] := d[u] + c[u, v];
               Trace[v] := u;
            end;
   until False;
end;

procedure PrintResult; {In du?ng di t? s t?i f}
var
   fo: Text;
begin
   Assign(fo, OutputFile); Rewrite(fo);
   if d[f] = maxC then
      WriteLn(fo, 'There is no path from ', s, ' to ', f)
   else
   begin
      WriteLn(fo, 'Distance from ', s, ' to ', f, ': ', d[f]);
      while f <> s do
         begin
            Write(fo, f, '<-');
            f := Trace[f];
         end;
      WriteLn(fo, s);
   end;
   Close(fo);
end;

begin
   LoadGraph;
   Init;
   Dijkstra;
   PrintResult;
end.