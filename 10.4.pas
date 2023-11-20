var A:array[1..8,1..8] of integer;i,j:integer; B:array[1..8] of integer;min,sum:integer;avg:real;flag:string;
  begin
    for i:=1 to 8 do begin
      for j:=1 to 8 do A[i,j]:=random(10)-5;
    end;
    writeln('Исходный массив A: ',A);
    for i:=1 to 8 do begin
      flag:='NO';
      min:=999999;
      avg:=0;
      sum:=0;
      for j:=1 to 8 do begin
        sum:=sum+A[i,j];
        if A[i,j]<min then min:=A[i,j];
      end;
      B[i]:=min;
      avg:=sum/8;
      for j:=1 to 8 do begin
        if A[i,j]=avg then begin flag:='YES';
        break;
      end;
      end;
      if flag='NO' then writeln('Массив ',i,' не содержит своего среднего арифмитического')
      else writeln('Массив ',i,' содержит своё среднее арифмитическое');
      end;
    writeln('Новый массив: ',B);
end.