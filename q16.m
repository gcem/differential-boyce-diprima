function q16
  q = @(t) 1e-6 * (exp(-4000*t) - 4 * exp(-1000*t) + 3);
  t = linspace(0, 0.02);
  qt = q(t);
  q1 = q(.001)
  q2 = q(.01)
  
  plot(t, qt);
  ylim(ylim)
  
  hor(q1)
  vert(.01)
  hor(q2)
  vert(.001)
  
  grid on
  legend show
  
  endfunction
