function q9
  t = linspace(0, 10);
  y = 3/16*(1 - cos(2*t)) + t.*t/8;
  plot(t, y);
  grid on
endfunction
