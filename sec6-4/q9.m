function q9
  t = linspace(0, 20, 1000);
  y = sin(t) + .5 * (-sin(t) + t + us(t - 6) .* (sin(t - 6) - (t - 6)));
  f = t / 2 + us(t - 6) .* (-t / 2 + 3);
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  xticks(0:pi:20)
  grid on
endfunction