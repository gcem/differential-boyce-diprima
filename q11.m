function q11
  t = linspace(0, 20, 10000);
  y = (1 - cos(2*t)) .* (us(t - pi) - us(t - 3*pi)) / 4;
  f = us(t - pi) - us(t - 3*pi);
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  grid on
  ylim([-.2 1.2])
endfunction