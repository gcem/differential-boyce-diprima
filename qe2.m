function qe2
  A = [1 1; 4 1];
  lims = [-3, 3];
  x = linspace(lims(1), lims(2), 40);
  [x1, x2] = meshgrid(x);
  dx1 = A(1,1) * x1 + A(1,2) * x2;
  dx2 = A(2,1) * x1 + A(2,2) * x2;
  
  norm = sqrt(dx1.*dx1 + dx2.*dx2);
  
  subplot(1,2,1);
  quiver(x1, x2, dx1 ./ norm, dx2 ./ norm, 0.6);
  title 'Direction field and some solutions (phase portrait)'
  
  axis equal
  xlim(lims);
  ylim(lims);
  
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