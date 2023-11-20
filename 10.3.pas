var A:array[1..8,1..8] of integer;i,j:integer; B:array[1..8] of integer;flag:string;
  begin
    for i:=1 to 8 do begin
      for j:=1 to 8 do A[i,j]:=random(10)-2;
    end;
    for i:=1 to 8 do begin
      flag:='NO';
      for j:=1 to 7 do begin
        if (A[i,j]+A[i,j+1])=7 then begin
          flag:='YES';
          break;
        end;
      end;
      if flag='YES' then B[i]:=1
      else B[i]:=-1;
      end;
    writeln('Исходный массив A: ',A);
    writeln('Новый массив: ',B);
end.