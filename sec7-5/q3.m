function q3
  A = [2 -1; 3 -2];
  df2(A);
  ax
  legend off
  f = @(t,c1,c2) c1 * [1;1] * exp(t) + c2 * [1;3] * exp(-t);
  slns2(f, -2:.5:2)
endfunction