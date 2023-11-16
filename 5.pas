var i,n,m,min,max,ind_max,ind_min,chet_ind:integer;A:array of integer; B:array of integer; ranshe,pozhe:array of integer;
begin
  SetLength(A,20);
  SetLength(B,20);
  for i:=0 to 19 do begin
    A[i]:=random(100)-50;
    B[i]:=random(100)-50;
    end;
  writeln('Исходный массив А: ',A);
  writeln('Исходный массив В: ',B);
  for i:=0 to 19 do begin
    if (A[i] mod 5) = 0 then begin
      ranshe:=A;
      pozhe:=B;
      break
    end;
    if (B[i] mod 5) = 0 then begin
      ranshe:=B;
      pozhe:=A;
      break
      end;
  end;
  max:=-999999;
  for i:=0 to 19 do begin
    if ranshe[i]>max then begin
    max:=ranshe[i];
    ind_max:=i;
    end;
  end;
  ranshe[ind_max]:=0;
  min:=999999;
   for i:=0 to 19 do begin
    if pozhe[i]<min then begin
    min:=pozhe[i];
    ind_min:=i;
    end;
  end;
  for i:=ind_min to 19 do begin
    pozhe[i]:=pozhe[i]*2;
  end;
  writeln('измененный массив A: ',A);
  writeln('измененный массив B: ',B);
  
end.