function q32
  t = linspace(0, 10, 1000);
  y = 2*cos(t) - sin(t);
  delta = atan(-1/2);
  y2 = sqrt(5) * cos(t - delta);
  plot(t, y, t, y2, '--');
  ax
  grid on
endfunction
