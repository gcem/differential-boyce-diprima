function q10b
  t = linspace(-1.3, 1.3);
  y1 = t;
  y2 = t - power(t, 4) / 4;
  y3 = t - power(t,4)/4 + 3/4/7*power(t, 7) -3/16/10*power(t, 10) + 1/64*power(t,13)/13;
  
  plot(t,y1, t,y2, t,y3);
  legend y1 y2 y3
  
  grid minor
  ax
endfunction
