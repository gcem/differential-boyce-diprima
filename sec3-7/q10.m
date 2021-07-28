function q10
  t = linspace(0, pi, 1000);
  u = @(t) 1/(8*sqrt(31)) * exp(-2*t) .* sin(2*sqrt(31)*t);
  
  plot(t, u(t));
  xlim([min(t) max(t)])
  ylim([-.02 .02])
  
  hor(.01)
  hor(-.01)
  
  hor(.01/12)
  hor(-.01/12)
  
  tmin = fsolve(@(t) u(t) - .01, .16);
  tmin2 = fsolve(@(t) u(t) + .01 / 12, 1.54);
  vert(tmin)
  vert(tmin2)
  vert(pi/2/sqrt(31))
  legend show
  
  ax
  grid minor
endfunction
