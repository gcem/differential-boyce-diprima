function q12
  A = 1 - eye(3) * 7/2;

  subplot(1,2,1)
  df3(A, 10)
  ax

  hold on
  t = linspace(-1, 10, 1000);
  x = 4/3*[1;1;1]*exp(-t/2) + 1/3*[2;5;-7]*exp(-7/2*t);
  plot3(x(1,:), x(2,:), x(3,:), 'linewidth', 2);
  plot3(2,3,-1,'or', 'linewidth', 2)
  title 'x_1x_2x_3-space'
  xlabel x_1
  ylabel x_2
  zlabel x_3

  subplot(1,2,2)
  plot(t, x(1,:));
  ax
  xlabel t
  ylabel x
  title 'x_1 vs t'
  grid on
endfunction
