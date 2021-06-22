# function slns(f = @(t, c), c = -5:5, tmin = -5, tmax = 5, )
function slns(f = @(t, c) t .* t + c, c = -5:5, tmin = -5, tmax = 5, makelegend = false)
  t = linspace(tmin, tmax, 1000);
  c = c(end:-1:1);
  [tt, cc] = meshgrid(t, c);
  yy = f(tt, cc);
  plot(t, yy);
  xlim([tmin, tmax]);
  if makelegend
    legend(cellfun(@num2str, mat2cell(c, 1, ones(length(c), 1)), "UniformOutput", false));
  endif
endfunction
