function q12
  t = linspace(0, .04, 1000);
  q = @(t) 1e-6 * (2 * exp(-500*t) - exp(-1000*t));
  
  qt = q(t);
  plot(t, qt);
  ax
  grid minor
endfunction
