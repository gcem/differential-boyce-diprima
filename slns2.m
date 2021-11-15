%% draws on top of the current figure - clf if this is not desired
%%
%% f should take a row vector and return a 2xn matrix
function slns2(f = @(t, c1, c2) [t;t], c1s = linspace(-1,1,5), c2s = c1s, ...
   tmin = -5, tmax = 5)
  t = linspace(tmin, tmax, 100);
  hold on
  for c1 = c1s
    for c2 = c2s
      x = f(t, c1, c2);
      plot(x(1,:), x(2,:), ...
        'displayname', sprintf('%.1f, %.1f', c1, c2), ...
        'linewidth', 2);
    endfor
  endfor
endfunction
