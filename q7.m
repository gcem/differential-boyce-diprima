function q7
  A = [1,-4;4,-7];

  subplot(1,2,1)
  df2(A, 20)
  ax

  hold on
  t = linspace(-10, 10, 1000);
  x = [3+4*t;2+4*t] .* exp(-3*t);
  plot(x(1,:), x(2,:), 'linewidth', 2);
  plot(3,2,'or', 'linewidth', 2)
  title 'x_1x_2 plane'

  subplot(1,2,2)
  # these are too large in magnitude
  x(1,t<-1) = NaN;
  t(t<-1) = NaN;
  plot(t, x(1,:));
  ax
  xlabel t
  ylabel x
  title 'x_1 vs t'
endfunction
