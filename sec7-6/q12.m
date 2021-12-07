function q12
  A = [[-4/5, 2]; [-1, 6/5]];
  t = linspace(-15, 5, 1000);
  x1 = exp(t/5) .* (-2*cos(t) + 10*sin(t));
  x2 = exp(t/5) .* (4*cos(t) + 6*sin(t));
  
  f = figure;
  subplot(1,3,1)
  hold on
  df2(A, 6);
  ax;
  plot(x1, x2, 'displayname', 'Solution', 'linewidth', 2)
  plot(-2, 4, 'or;(-2, 4);', 'linewidth', 2)
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