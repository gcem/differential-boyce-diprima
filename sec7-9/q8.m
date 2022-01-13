function q8
  A = [-5,3;-3,1] / 2;

  subplot(1,2,1)
  df2(A, 20)
  ax

  hold on
  t = linspace(-1, 10, 1000);
  x = ([3;-1] - 6*t) .* exp(-t);
  plot(x(1,:), x(2,:), 'linewidth', 2);
  plot(3,-1,'or', 'linewidth', 2)
  title 'x_1x_2 plane'

  subplot(1,2,2)
  plot(t, x(1,:));
  ax
  xlabel t
  ylabel x
  title 'x_1 vs t'
  grid on
endfunction
