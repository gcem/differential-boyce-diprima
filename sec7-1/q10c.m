function q10c
  t = linspace(0, 10, 1000);
  c1 = -7;
  c2 = 6;
  x1 = c1*exp(-t) + c2*exp(-2*t);
  x2 = c1*exp(-t) + 3/2*c2*exp(-2*t);
  plot(x1, x2, ';solution;')
  ylim([-2.5,2.5])
  xlim([-3,1])
  xlabel 'x_1'
  ylabel 'x_2'
  ob(1, 'name', 'x_1 = x_2'); % plot x1 = 2*x2 line
  ax
  legend show
endfunction