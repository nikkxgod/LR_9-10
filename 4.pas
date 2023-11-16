var A:array[1..5] of integer;i,sumA,sumB:integer;B:array[1..5] of integer;
  begin
    sumA:=0;
    sumB:=0;
    for i:=1 to 5 do begin
      A[i]:=random(9)-4;
      B[i]:=random(9)-4;
      if A[i]>=0 then sumA:=sumA+A[i];
      if B[i]>=0 then sumB:=sumB+B[i];
    end;
   writeln('Массив А: ', A);
   writeln('Массив B: ', B); 
    if sumA<sumB then begin
      for i:=1 to 5 do 
        A[i]:=A[i]*10;
      end
    else begin
      for i:=1 to 5 do 
      B[i]:=B[i]*10;
      end;
   writeln('ИЗМЕНЕННЫЕ МАССИВЫ:');
   writeln('Массив А: ', A);
   writeln('Массив B: ', B); 
end.
      
      