function q10
  f = @(t,y) (y .* y + 2 * t .* y) ./ (3 + t .* t);
  df(f);
  ax
endfunction