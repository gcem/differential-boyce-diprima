%% draws on top of the current figure - clf if this is not desired
%%
%% f should take a row vector and return a 2xn matrix
function slns2(f = @(t, c1, c2) [t;t], c1s = linspace(-1,1,5), c2s = c1s, ...
   tmin = -7, tmax = 7)
  t = linspace(tmin, tmax, 1000);
  solutionCount = length(c1s) * length(c2s);
  x1 = zeros(length(t), solutionCount);
  x2 = x1;
  hold on
  j = 1;
  for c1 = c1s
    for c2 = c2s
      x = f(t, c1, c2);
      x1(:,j) = x(1,:);
      x2(:,j) = x(2,:);
      j++;
    endfor
  endfor
  plot(x1, x2, 'linewidth', 2, 'handlevisibility', 'off');
endfunction
