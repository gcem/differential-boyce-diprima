function q2
  A = [-1 -4; 1 -1];
  df2(A)
  ax
  slns2(@f);
endfunction

function xx = f(t, c1, c2)
  cs = cos(2*t);
  sn = sin(2*t);
  ex = repmat(exp(-t), 2, 1);
  xx = ex .* (c1 * [2*cs; sn] + c2 * [2*sn; -cs]);
endfunction