function q24
  p = {...
    @(x) ones(size(x)), ...
    @(x) x, ...
    @(x) (3*x.^2 - 1) / 2, ...
    @(x) (5*x.^3 - 3*x) / 2, ...
    @(x) (35*x.^4 - 30*x.^2 + 3) / 8, ...
    @(x) (63*x.^5 - 70*x.^3 + 15*x) / 8
    };
  x = linspace(-1, 1, 1000);
  fig = figure;
  hold on;
  for k = 1:length(p);
    deg = k - 1;
    plot(x, p{k}(x), 'displayname', sprintf('P_{%d}(x)', deg));
  endfor
  legend show
  legend('fontsize', 13)
  title 'Legendre polynomials'
endfunction