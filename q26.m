function q26
  f = @(t,c1,c2) [-1;2]*exp(-1*t) * c1 + [1;2] * exp(2*t) * c2;
  subplot(1,2,1)
  slns2(f)
  xlim([-5,5])
  ylim([-5,5])
  ax
  plot(2,3, 'or', 'linewidth', 2)
  
  t = linspace(-4,2,1000);
  xx = f(t, -1/4, 7/4);
  plot(xx(1,:), xx(2,:), 'k--')
  
  subplot(1,2,2)
  plot(t, xx');
  legend('x_1', 'x_2')
endfunction