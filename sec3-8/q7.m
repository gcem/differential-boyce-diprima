function q7
  t = linspace(0, 5*pi, 1000);
  a = 16 / 247;
  c1 = (1/6 - a);
  u = @(t) c1 * cos(16*t) + a * cos(3*t);
  
  fig = figure;
  hold on
  plot(t, u(t))
  # plot(t, a*cos(3*t), 'r--')
##  plot(t, a*cos(3*t) + c1, 'r--')
##  plot(t, a*cos(3*t) - c1, 'r--')
  ax
  grid on
endfunction
