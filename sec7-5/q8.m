function q8
  A = [3 6; -1 -2];
  df2(A);
  ax
  legend off
  f = @(t,c1,c2) c1 * [3;-1] * exp(t) + c2 * [2;-1];
  slns2(f)
  title 'Phase Portrait and Direction Field'
  
  ob(-1/2, 'style', 'r--', 'lw', 2)
endfunction