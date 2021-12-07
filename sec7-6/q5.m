function q5
  A = [1 -1; 5 -3];
  df2(A)
  ax
  slns2(@f)
endfunction

function x = f(t, c1, c2)
  s = sin(t);
  c = cos(t);
  x = (c1 * [2*c-s; 5*c] + c2 * [2*s+c; 5*s]) .* exp(-t);
endfunction