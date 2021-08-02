function q11
  t = linspace(0, 3);
  y = 1 + t.*t/4 + 3/4*t - t .* exp(t);
  plot(t, y)
endfunction
