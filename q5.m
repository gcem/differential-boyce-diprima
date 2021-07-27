function q5
  t = linspace(0, pi*2, 1000);
  x = 3 * cos(8*t);
  plot(t, x)
  xlim([min(t), max(t)])
  ax
  grid minor

  vert(pi/4) # w = 8 rad/s, T = pi/4s
endfunction
