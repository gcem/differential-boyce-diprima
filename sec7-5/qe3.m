function qe3
  A = [-3, sqrt(2); sqrt(2), -2];
  df2(A);
  ax
  
  t = linspace(-5,5,1000);
  ex1 = exp(-t);
  ex2 = exp(-4*t);
  x1 = [1;sqrt(2)]*ex1;
  x2 = [sqrt(2);-1]*ex2;
  
  % stolen from qe2
  sln1 = 0.4*(x1 + x2);
  sln2 = 0.4*(x1 - x2);
  sln3 = 0.4*(-x1 + x2);
  sln4 = 0.4*(4*x1 + 0.3*x2);
  
  hold on
  plot(x1(1,:), x1(2,:), ';x^{(1)};', 'linewidth', 2)
  plot(x2(1,:), x2(2,:), ';x^{(2)};', 'linewidth', 2)
  plot(-x1(1,:), -x1(2,:), ';x^{(1)};', 'linewidth', 2)
  plot(-x2(1,:), -x2(2,:), ';x^{(2)};', 'linewidth', 2)
  
  plot(sln1(1,:),sln1(2,:), ';sln1;', 'linewidth', 2)
  plot(sln2(1,:),sln2(2,:), ';sln2;', 'linewidth', 2)
  plot(sln3(1,:),sln3(2,:), ';sln3;', 'linewidth', 2)
  plot(sln4(1,:),sln4(2,:), ';sln4;', 'linewidth', 2)
  
  title 'Phase portrait'
endfunction