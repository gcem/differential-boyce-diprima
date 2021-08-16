function q15
  x = linspace(-1, 1, 1000);
  y1 = polyval([1/3, 1, 1, 2], x);
  y2 = polyval([1/4, 1/3, 1, 1, 2], x);
  
  plot(x, y1, ';4 terms;', x, y2, ';5 terms;');
  
  tolerance = 0.001;
  goodvals = find(abs(y1-y2) <= tolerance);
  x1 = x(min(goodvals));
  x2 = x(max(goodvals));
  
  vert(x1)
  vert(x2)
  
  grid on
  ax
endfunction