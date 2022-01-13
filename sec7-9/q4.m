function q4
  A = [-3,5/2; -5/2,2];
  [v,r] = eig(A)

  subplot(1,2,1)
  df2(A,3,60)
  ax
  ob(1)

  # same thing
  subplot(1,2,2)
  df2(A,3,60)
  ax
  ob(1)

  slns2(@(t,c1,c2) exp(-t/2) .* (c1*[1;1] + c2*[t;t+2/5]))
endfunction

