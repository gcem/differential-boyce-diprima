function q17
  A = [1 1 2; 0 2 2; -1 1 3];
  df3(A)
  t = linspace(-3, 3);
  x = [0;2;-1]*-1*exp(t) + [1;1;0]*2*exp(2*t);
  hold on
  plot3(x(1,:), x(2,:), x(3,:), 'linewidth', 2);
  ax3
endfunction