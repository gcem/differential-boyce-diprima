function q10
  phi = @(t) exp(-.5 * t) .* (4 * cos(t) + sin(t)) - 4 * cos(t) + sin(t);
  t = linspace(0, 20, 10000);
  y = 4 / 17 * (phi(t) + us(t - pi) .* phi(t - pi));
  f = sin(t);
  f(t >= pi) = 0;
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  xticks(0:pi:20)
  xticklabels({'0', '\pi', strsplit(sprintf('%d\\pi_', 2:30), '_'){:}})
  grid on
endfunction