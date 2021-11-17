function q30
  t = linspace(0, 120, 10000);
  c1 = 29/8;
  c2 = -55/8;
  xx = c1*[1;-2]*exp(-t/4) + c2*[3;2]*exp(-t/20);
  plot(t, xx')
  legend('x_1', 'x_2')
  less = abs(xx) > 0.5;
  lessCol = sum(less,1);
  tmin = t(max(find(lessCol)) + 1);
  hor(-.5);
  vert(tmin);
endfunction