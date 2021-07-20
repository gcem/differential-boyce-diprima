function q24b
  u = @(t) exp(-t/5) .* (2 * cos(sqrt(34)/5*t) + 7 / sqrt(34)*sin(sqrt(34)/5*t));
  t = linspace(0, 20);
  
  plot(t, u(t))
  ax
  grid minor
  hor(.1)
  hor(-.1)
  
  tmin = fsolve(@(t) u(t) + .1, 14);
  vert(tmin)
  legend show
endfunction
