function q9
  A = [2,3/2;-3/2,-1];

  subplot(1,2,1)
  df2(A, 20)
  ax

  hold on
  t = linspace(-10, 2, 1000);
  x = ([3;-2] + [1;-1]*3/2*t) .* exp(t/2);
  plot(x(1,:), x(2,:), 'linewidth', 2);
  plot(3,-2,'or', 'linewidth', 2)
  title 'x_1x_2 plane'

  subplot(1,2,2)
  plot(t, x(1,:));
  ax
  xlabel t
  ylabel x
  title 'x_1 vs t'
  grid on
endfunction
