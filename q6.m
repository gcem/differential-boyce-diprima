function q6
  f = @(t,y) y .* (3 - t .* y);
  df(f, .2);
  ax
endfunction