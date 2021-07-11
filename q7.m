function q7
  f = @(t,y) (4 - t .* y) ./ (1 + y .* y);
  df(f);
  ax
endfunction