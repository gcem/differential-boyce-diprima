function q6
  A = [1 2; -5 -1];
  df2(A)
  ax
  slns2(@f)
endfunction

function x = f(t, c1, c2)
  s = sin(3*t);
  c = cos(3*t);
  x = c1 * [2*c; -c-3*s] + c2 * [2*s; 3*c-s];
endfunction