function q4
  A = [2, -5/2; 9/5, -1];
  df2(A)
  ax
  slns2(@f);
endfunction

function xx = f(t, c1, c2)
  cs = cos(3/2*t);
  sn = sin(3/2*t);
  ex = repmat(exp(.5*t), 2, 1);
  xx = ex .* (c1 * [5*cs; 3*(sn+cs)] + c2 * [5*sn; 3*(sn-cs)]);
endfunction