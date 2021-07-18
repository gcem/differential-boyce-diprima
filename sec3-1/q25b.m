function q25b
  f = @(t) 3/5*exp(-2*t) + 2/5*exp(t/2);
  t = linspace(0, 2);
  
  plot(t, f(t));
  grid minor
  
  vert(2/5*log(6));
  hor(3/5*6^-.8 + 2/5*6^.2);
  legend show
endfunction
