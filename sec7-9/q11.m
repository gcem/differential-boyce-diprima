function q11
  A = [1,0,0;-4,1,0;3,6,2];

  subplot(1,2,1)
  df3(A, 40)
  ax

  hold on
  t = linspace(-10, 2, 1000);
  x = [-1;2;-33] * exp(t) + [0;4;-24] * (t.*exp(t)) + [0;0;3] * exp(2*t);
  plot3(x(1,:), x(2,:), x(3,:), 'linewidth', 2);
  plot3(-1,2,-30,'or', 'linewidth', 2)
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
