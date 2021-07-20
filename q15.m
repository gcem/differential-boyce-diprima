function q15
  y = @(t) exp(-3/2*t) .* (1 - 5/2 * t);
  t = linspace(0, 5, 10000);
  yt = y(t);
  plot(t, yt)
  grid minor
  ax
  
  t0 = fsolve(y, 0);
  ymin = min(yt);
  tmin = t(ymin == yt);
  vert(t0)
  vert(tmin)
  hor(ymin)
  legend show
endfunction
