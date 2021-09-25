function q6
  t = linspace(0, 20, 1000);
  y = -exp(-2*t) + exp(-t) + us(t - 2) .* (.5 + .5*exp(-2*(t-2)) - exp(-(t-2)));
  f = us(t-2);
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  xticks(0:pi:20)
  grid on
  ylim([-.1 1.1])
  hor(.5, 'style', '--')
endfunction