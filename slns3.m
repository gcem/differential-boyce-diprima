function slns3(f = @(t, c1, c2, c3) [t;t;t], c1s = linspace(-1,1,5), c2s = c1s, c3s = c1s, ...
   tmin = -7, tmax = 7)
  t = linspace(tmin, tmax, 1000);
  solutionCount = length(c1s) * length(c2s) * length(c3s);
  x1 = zeros(length(t), solutionCount);
  x2 = x1;
  x3 = x1;
  hold on
  j = 1;
  for c1 = c1s
    for c2 = c2s
      for c3 = c3s
        x = f(t, c1, c2, c3);
        x1(:,j) = x(1,:);
        x2(:,j) = x(2,:);
        x3(:,j) = x(3,:);
        j++;
      endfor
    endfor
  endfor
  legend off
  plot3(x1, x2, x3, 'linewidth', 2);
endfunction
