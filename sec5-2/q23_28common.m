function q23_28common(polynomial, ylimit)
  t = linspace(-10, 10, 1000);
  fig = figure;
  hold on
  for p = 0:length(polynomial) - 1
    coeff = polynomial(end-p:end);
    if coeff(1) == 0
      continue
    endif
    y = polyval(coeff, t);
    plot(t, y, 'displayname', sprintf('Terms up to x^{%d}', p));
  endfor
  legend show
  legend('fontsize', 14)
  if nargin >= 2
    ylim(ylimit)
  endif
endfunction