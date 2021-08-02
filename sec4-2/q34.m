function q34
  t = linspace(0, 8.5, 1000);
  y = 1/13 * (2 * exp(-t) + 24 * exp(t/2) .* cos(t) + 3 * exp(t/2) .* sin(t));
  plot(t, y);
  xlim([0 t(end)])
  ax
  grid on

endfunction
