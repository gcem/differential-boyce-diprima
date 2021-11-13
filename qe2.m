function qe2
  A = [1 1; 4 1];
  subplot(1,2,1)
  df2(A)
  
  ax
  ob(2)
  ob(-2)
  
  % plot some solutions
  t = linspace(-3, 3, 1000);
  v1 = [1;-2] * exp(-t);
  v2 = [1;2] * exp(3*t);
  
  sln1 = 0.4*(v1 + v2);
  sln2 = 0.4*(v1 - v2);
  sln3 = 0.4*(-v1 + v2);
  sln4 = 0.4*(4*v1 + 0.3*v2);
  
  hold on
  plot(sln1(1,:),sln1(2,:), ';sln1;')
  plot(sln2(1,:),sln2(2,:), ';sln2;')
  plot(sln3(1,:),sln3(2,:), ';sln3;')
  plot(sln4(1,:),sln4(2,:), ';sln4;')
  
  subplot(1,2,2);
  title 'Some plots of x_1';
  hold on
  plot(t,sln1(2,:), ';sln1;')
  plot(t,sln2(2,:), ';sln2;')
  plot(t,sln3(2,:), ';sln3;')
  plot(t,sln4(2,:), ';sln4;')
  xlim([-.6 .6])
  ylim([-5 5])
  ax
endfunction