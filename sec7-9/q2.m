function q2
  A = [4,-2; 8,-4];
  subplot(1,2,1)
  df2(A)
  ax
  title 'Normalized direction field'
  ob(2)
  subplot(1,2,2)
  df2nn(A)
  ax
  ob(2)
  title 'Not normalized'
  [v,r] = eig(A)
endfunction
