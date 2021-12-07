function q3
  A = [2, -5; 1, -2];
  df2(A)
  ax
  slns2(@f);
endfunction

function xx = f(t, c1, c2)
  cs = cos(t);
  sn = sin(t);
  xx = c1 * [2*cs-sn; cs] + c2 * [cs+2*sn; sn];
endfunction