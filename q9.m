function q9
  A = [1 -5; 1 -3];
  df2(A, 20);
  ax
  slns2(@f, 1/5, -3/5)
  plot(1,1,'or', 'linewidth', 2)
endfunction

function x = f(t, c1, c2)
  s = sin(t);
  c = cos(t);
  x = exp(-t) .* (c1*[5*c;2*c+s] + c2*[5*s;2*s-c]);
endfunction