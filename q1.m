function q1
  A = [3 -2; 2 -2];
  df2(A)
  ax
  slns2(@(t, c1, c2) [1;2] * exp(-t) * c1 + [2;1] * exp(2*t) * c2)
  legend off
  title 'Phase portrait on the direction field'
endfunction