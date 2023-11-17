var A:array[1..6,1..8] of integer;i,j:integer; B:array[1..6] of integer;
  begin
    for i:=1 to 6 do begin
      for j:=1 to 8 do A[i,j]:=random(10)-5;
    end;
    for i:=1 to 6 do begin
      for j:=1 to 8 do begin
        if abs(A[i,j])>4 then begin
        B[i]:=A[i,j];
        break;
        end
        else B[i]:=0;
      end;
    end;
    writeln('Исходный массив A: ',A);
    writeln('Новый массив: ',B);
end.