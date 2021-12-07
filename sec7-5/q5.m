function q5
  A = [-2 1; 1 -2];
  df2(A);
  ax
  legend off
  f = @(t,c1,c2) c1 * [1;1] * exp(-1*t) + c2 * [1;-1] * exp(-3*t);
  slns2(f)
  title 'Phase Portrait and Direction Field'
endfunction