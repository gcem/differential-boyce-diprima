function qe2
  t = linspace(0, 5*pi, 1000);
  y = 3 * exp(-t) + .5 * cos(t) - sin(t);
  plot(t, y)
  xlim([0 5*pi])
  ax
  grid on
endfunction
