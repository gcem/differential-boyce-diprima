function q7
  t = linspace(0, 20, 1000);
  y = cos(t) + us(t-3*pi) .* (1 + cos(t));
  f = us(t-3*pi);
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  xticks(0:pi:20)
  grid on
endfunction