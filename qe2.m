function qe2
  A = [1 -1; 1 3];
  df2(A)
  ax

  slns2(@sln);
endfunction

function x = sln(t,c1,c2)
  ex = exp(2*t);
  x = ...
    c1 * ([1;-1] * (t.*ex) + [0;-1] * ex) + ...
    c2 * [1;-1] * ex;
endfunction
