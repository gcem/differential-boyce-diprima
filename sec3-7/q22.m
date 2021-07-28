function q22
  t = linspace(0, pi, 1000);
  u = @(t) 1/(8*sqrt(31)) * exp(-2*t) .* sin(2*sqrt(31)*t);
  
  ut = u(t);
  plot(t, ut);
  xlim([min(t) max(t)])
  ylim([-.02 .02])
  
  umax = max(ut);
  umin = min(ut);
  logarithmicDecrement = 2*pi/sqrt(31);
  
  for k = 0:3
    ratio = exp(-k * logarithmicDecrement)
    hor(umax * ratio)
    hor(umin * ratio)
  endfor

  ax
  grid minor
endfunction
