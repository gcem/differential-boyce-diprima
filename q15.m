function q15
  f0 = 10;
  t1 = linspace(0, pi, 1000);
  t2 = linspace(pi, 2*pi, 1000);
  t3 = linspace(2*pi, 6*pi, 1000);
  
  u1 = f0 * (t1 - sin(t1));
  u2 = f0 * (2 * pi - t2 - 3 * sin(t2));
  u3 = f0 * -4 * sin(t3);
  
  f1 = f0 * t1;
  f2 = f0 * (2 * pi - t2);
  f3 = 0 * t3;
  
  fig = figure;
  hold on
  plot(t1, u1, 'b', t2, u2, 'b', t3, u3, 'b');
  plot(t1, f1, 'g', t2, f2, 'g', t3, f3, 'g');
  
  vert(pi)
  vert(2*pi)
  
  grid on
  
endfunction
