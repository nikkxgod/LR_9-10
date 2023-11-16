var i,n,m,chet_ind:integer;A:array of integer;
function sum_arr(arr:array of integer):integer;
  var sum,i:integer;
  begin
    sum:=1;
    for i:=0 to 19 do begin
      if (i mod 2) = 0 then
        sum:=sum*arr[i];
    end;
    sum_arr:=sum;
  end;
begin
  SetLength(A,20);
  for i:=0 to 19 do begin
    A[i]:=random(10);
    end;
  writeln('Исходный массив: ',A);
  writeln('Произведение четных элементов массива: ',sum_arr(A));
end.