function q4
  A = [1 1; 4 -2];
  df2(A);
  ax
  legend off
  f = @(t,c1,c2) c1 * [1;-4] * exp(-3*t) + c2 * [1;1] * exp(2*t);
  slns2(f)
  title 'Phase Portrait and Direction Field'
endfunction