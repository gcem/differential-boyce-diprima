function q10
  t = linspace(0, 20);
  y = 3*t + 4 - cos(t) .* (4 + t) + sin(t) .* (1 + 3/2*t);
  plot(t, y);
endfunction
