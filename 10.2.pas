var A:array[1..8,1..6] of integer;i,j:integer; B:array[1..8] of integer;flag:string;
  begin
    for i:=1 to 8 do begin
      for j:=1 to 6 do A[i,j]:=random(10)-2;
    end;
    for i:=1 to 8 do begin
      flag:='YES';
      for j:=1 to 6 do begin
        if A[i,j]<0 then begin flag:='NO';
        break;
        end;
      end;
      if flag='NO' then B[i]:=-1
      else B[i]:=1;
    end;
    writeln('Исходный массив A: ',A);
    writeln('Новый массив: ',B);
end.