function qe4
  t = linspace(0, 20*pi, 1000);
  u = @(t) 1/4 * t .* sin(t);
  
  ut = u(t);
  
  fig = figure;
  hold on
  plot(t, ut);
  
  plot(t, 1/4*t, '--k');
  plot(t, -1/4*t, '--k');
  
  ax
  grid on
endfunction
