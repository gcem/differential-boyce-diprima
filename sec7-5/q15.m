function q15
  A = [5 -1; 3 1];
  df2(A);
  ax
  legend off
  f = @(t,c1,c2) c1 * [1;3] * exp(2*t) + c2 * [1;1] * exp(4*t);
  slns2(f, -3/2, 7/2, -3, 3)
  title 'Solution on the Direction Field'
  
  plot(2, -1, 'ro', 'linewidth', 2)
  xlim([-5, 20])
  ylim([-5, 20])
  ob(1)
endfunction