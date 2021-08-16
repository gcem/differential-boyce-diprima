function q9
  t = linspace(0, 25);
  y = @(t) log(tan(t) + sec(t)) - t .* cos(t) + sin(t) .* log(cos(t)) + 2 * cos(t) + sin(t);
  
  plot(t, y(t))
  ax
endfunction
