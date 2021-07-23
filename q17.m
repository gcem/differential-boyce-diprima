function q17
  y = @(t) exp(-1/2*t) .* (1 + 5/2 * t);
  t = linspace(0, 15, 10000);
  yt = y(t);
  plot(t, yt)
  grid minor
  ax
  
  ymax = max(yt);
  tmax = t(ymax == yt);
  vert(tmax)
  hor(ymax)
  legend show
endfunction
