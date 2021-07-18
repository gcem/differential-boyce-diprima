function q19
  f = @(t) 1/4 .* exp(t) + exp(-t);
  t = linspace(0, 2);
  plot(t, f(t))
  grid minor
  ax
endfunction
