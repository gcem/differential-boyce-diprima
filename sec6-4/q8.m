function q8
  phi = @(t) exp(-t * .5) .* (4 / 5 * cos(t) - 3 / 5 * sin(t)) + t - 4/5;
  t = linspace(0, 20, 1000);
  y = 4/5 * (phi(t) - us(t - pi / 2) .* phi(t - pi / 2));
  f = t - us(t - pi / 2) .* (t - pi / 2);
  
  plot(t, y, t, f, t, f * 4/5, '--');
  legend('y(t)', 'f(t): Forcing function', '4f(t) / 5');
  xticks(0:pi:20)
  grid on
endfunction