%%% same as q3 except force is removed at t = 6 * pi 
function q3late
  t = linspace(0, 25, 1000);
  y = 1/3 * (sin(t) - sin(2*t) * .5 - us(t - 6*pi) .* sin(t) + us(t - 6*pi) .* sin(2*t) * .5);
  f = sin(t) - us(t - 6*pi) .* sin(t);
  
  plot(t, y, t, f);
  legend('y(t)', 'f(t): Forcing function');
  xticks(0:pi:25)
  grid on
endfunction