var i,n,m,chet_ind:integer;A:array of integer;
procedure proc(arr:array of integer);
  var max,min,i:integer;
  begin
    min:=100000;
    max:=-9999999;
    for i:=0 to 19 do begin
      if abs(arr[i])<min then min:=arr[i];
      if (arr[i]<0) and (arr[i]>max) then max:=A[i];
    end;
    writeln('Минимальное по модулю число: ',min);
    writeln('Максимальное отрицательное число: ',max);
  end;
begin
  SetLength(A,20);
  for i:=0 to 19 do begin
    A[i]:=random(10)-5;
    end;
  writeln('Исходный массив: ',A);
  proc(A);
end.