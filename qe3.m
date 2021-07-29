function qe3
  t = linspace(0, 30*pi, 1000);
  a = .5 / .36;
  c1 = -a;
  u = @(t) c1 * cos(t) + a * cos(0.8 * t);
  
  fig = figure;
  hold on
  plot(t, u(t));
  plot(t, 2 * .5 / (1 - .64) * sin(.1 * t), '--')
  plot(t, -2 * .5 / (1 - .64) * sin(.1 * t), '--')
  ax 
  grid on
  
endfunction
