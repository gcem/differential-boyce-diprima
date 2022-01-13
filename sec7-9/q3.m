function q3
  A = [-3/2,1;-1/4,-1/2];
  df2(A)
  ax
  [v,r] = eig(A)
  ob(.5)
  slns2(@sln)
endfunction

function x = sln(t,c1,c2)
  ex = exp(-t);
  x = c1 * [2;1] * ex + c2 * [2*t;t+2] .* ex;
endfunction
