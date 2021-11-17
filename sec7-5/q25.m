function q25
  f = @(t,c1,c2) [-1;2]*exp(1*t) * c1 + [1;2] * exp(-2*t) * c2;
  slns2(f)
  xlim([-5,5])
  ylim([-5,5])
  ax
  plot(2,3, 'or', 'linewidth', 2)
  xx = f(linspace(-1,5,1000), -1/4, 7/4);
  plot(xx(1,:), xx(2,:), 'k--')
endfunction