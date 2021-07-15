function q9b
  t = linspace(-1.3, 1.3);
  y1 = power(t, 3) / 3;
  y2 = power(t, 3) / 3 + power(t, 7) / 21;
  y3 = power(t, 3) / 3 + power(t, 7) / 63 + power(t, 15) / (49*81*15) + power(t, 11) * 2 / (11*9*7*3);
  
  plot(t,y1, t,y2, t,y3);
  legend y1 y2 y3
  
  grid minor
  ax
endfunction
