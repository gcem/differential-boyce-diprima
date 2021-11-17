function q7
  A = [4 -3; 8 -6];
  df2(A);
  ax
  legend off
  f = @(t,c1,c2) c1 * [1;2] * exp(-2*t) + c2 * [3;4];
  slns2(f)
  title 'Phase Portrait and Direction Field'
endfunction