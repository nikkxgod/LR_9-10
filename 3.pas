var i,n,m,chet_ind:integer;A:array of integer;
function last_negativ(arr:array of integer):integer;
  var ind_last,i:integer;
  begin
    ind_last:=-9999;
    for i:=0 to 19 do begin
      if (A[i]<0) and (i>ind_last) then ind_last:=i;
    end;
    last_negativ:=ind_last+1;
  end;
begin
  SetLength(A,20);
  for i:=0 to 19 do begin
    A[i]:=random(10)-5;
    end;
  writeln('Исходный массив: ',A);
  writeln('Номер последнего отрациальнего элемента: ',last_negativ(A));
end.