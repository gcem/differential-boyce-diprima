function q8
  f = @(t,y) -t .* y + .1 * y .* y .* y;
  df(f, .3);
  ax
endfunction