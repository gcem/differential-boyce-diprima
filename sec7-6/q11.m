function q11
  A = [3/4 -2; 1 -5/4];
  t = linspace(-5, 15, 1000);
  x1 = exp(-t/4) .* (4*cos(t) + 2*sin(t));
  x2 = exp(-t/4) .* (cos(t) + 3*sin(t));
  
  f = figure;
  subplot(1,3,1)
  hold on
  df2(A, 6);
  ax;
  plot(x1, x2, 'displayname', 'Solution', 'linewidth', 2)
  plot(4, 1, 'or;(4,1);', 'linewidth', 2)
  grid on
  xlabel x_1
  ylabel x_2
  
  subplot(1,3,2)
  plot(t, x1, t, x2)
  legend x_1 x_2
  xlabel t
  
  subplot(1,3,3)
  plot3(t, x1, x2)
  xlabel t
  ylabel x_1
  zlabel x_2
  ax3
  grid on
  
endfunction