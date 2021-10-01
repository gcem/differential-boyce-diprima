function q5
  t = linspace(0, 20, 1000);
  y = .5 + .5*exp(-2*t) - exp(-t) - us(t-10) .* (.5 + .5 * exp(-2*(t-10)) - exp(-(t-10)));
  f = 1 - us(t - 10);
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  xticks(0:pi:20)
  grid on
  ylim([-.1 1.1])
endfunction