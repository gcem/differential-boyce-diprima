function qe3
  c1 = 2;
  c2 = 2/sqrt(255);
  u = @(t) exp(-1/16*t) .* (c1 * cos(sqrt(255)/16*t) + c2 * sin(sqrt(255)/16*t));
  t = linspace(0, 20*pi, 1000);
  
  r = sqrt(c1*c1 + c2*c2);
  limits = @(t) exp(-1/16*t) * r;
  
  limt = limits(t);
  ut = u(t);
  
  plot(t, ut, t, limt, '--', t, -limt, '--r');
  xlim([min(t), max(t)])
  grid minor
  ax
  
  hor(.1)
  hor(-.1)
  
  tmin = fsolve(@(t) u(t) + .1 , 47.234);
  tequi = 16/sqrt(255) * (atan(-sqrt(255))+pi);
  vert(tmin)
  vert(tequi)
  legend show
endfunction
