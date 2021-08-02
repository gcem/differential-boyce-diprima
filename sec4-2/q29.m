function q29
  t = linspace(0, 10*pi);
  y = 2 - 2*cos(t) + sin(t);
  plot(t, y);
  xlim([0 t(end)]);
  ax
  grid on
endfunction
