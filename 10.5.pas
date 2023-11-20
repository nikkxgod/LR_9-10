var A:array[1..8,1..8] of integer;i,j:integer; B:array[1..8] of integer;max,sum:integer;avg:real;flag:string;
  begin
    for i:=1 to 8 do begin
      for j:=1 to 8 do A[i,j]:=random(10)-5;
    end;
    writeln('Исходный массив A: ',A);
    for i:=1 to 8 do begin
      flag:='NO';
      max:=-99999;
      for j:=1 to 8 do begin
        if A[i,j]>max then max:=A[i,j]
        else if A[i,j]=max then begin 
        flag:='YES';
        break;
        end;
      end;
      if flag='YES' then B[i]:=0
      else B[i]:=1;
    end;
    writeln('Новый массив: ',B);
end.