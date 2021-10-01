function q3
  t = linspace(0, 20, 1000);
  y = 1/3 * (sin(t) - sin(2*t) * .5 - us(t - 2*pi) .* sin(t) + us(t - 2*pi) .* sin(2*t) * .5);
  f = sin(t) - us(t - 2*pi) .* sin(t);
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  xticks(0:pi:20)
  grid on
endfunction