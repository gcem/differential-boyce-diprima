function q6
  A = [5 3; 3 5] / 4;
  df2(A);
  ax
  legend off
  f = @(t,c1,c2) c1 * [1;1] * exp(2*t) + c2 * [1;-1] * exp(.5*t);
  slns2(f)
  title 'Phase Portrait and Direction Field'
endfunction