function q9
  t = linspace(0, 1*pi, 1000);
  u = @(t) exp(-10*t) .* (2*cos(4*sqrt(6)*t) + 5/sqrt(6)*sin(4*sqrt(6)*t));
  
  plot(t, u(t));
  xlim([min(t) max(t)])
  
  hor(.05)
  hor(-.05)
  
  tmin = fsolve(@(t) u(t) + .05, .33);
  vert(tmin)
  legend show
  
  grid minor;
  ax;
  
endfunction
