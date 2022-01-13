function q10
  A = [3,9;-1,-3];

  subplot(1,2,1)
  df2(A, 20)
  ax

  hold on
  t = linspace(-4, 4, 1000);
  x = [42;-14]*t + [2;4];
  plot(x(1,:), x(2,:), 'linewidth', 2);
  plot(2,4,'or', 'linewidth', 2)
  title 'x_1x_2 plane'

  subplot(1,2,2)
  plot(t, x(1,:));
  ax
  xlabel t
  ylabel x
  title 'x_1 vs t'
  grid on
endfunction
