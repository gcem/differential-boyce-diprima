function c = q35
  coef = [1 1 1; 1 -1/2 -1/3; 1 1/4 1/9];
  c = coef \ [-2 2 0]';
  y = @(t) 2/3 - 8/3*exp(-t/2);
  t = linspace(0, 10);
  plot(t, y(t))
  ax
  grid minor
  hor(2/3, 'y = 2 / 3')
  legend show
endfunction
