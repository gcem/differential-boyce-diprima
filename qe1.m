function qe1
  c1 = 11/8;
  c2 = 5/12;
  c3 = -1/8;
  c4 = -2/3;
  t = linspace(0, 2, 1000);
  y = @(t) exp(t) * c1 + exp(-t) * c2 + exp(-3*t) * c3 + exp(2*t)*c4;
  plot(t, y(t));
  ax
  grid minor
endfunction
