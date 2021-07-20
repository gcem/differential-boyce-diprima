function q23b
  u = @(t) exp(t/6) .* (2 * cos(sqrt(23)/16*t) - 2/sqrt(23)*sin(sqrt(23)/6*t));
  t = linspace(0, 10);
  plot(t, u(t))
  grid minor
  ax
  
  x10 = fsolve(@(t) u(t) + 10, 1e-2);
  vert(x10)
  hor(-10)
  legend show
endfunction
