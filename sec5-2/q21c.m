function q21c
  x = linspace(-3, 3, 1000);
  
  h0 = ones(size(x));
  h1 = 2 * x;
  h2 = -2 + 4 * x .^ 2;
  h3 = -12 * x + 8 * x .^ 3;
  h4 = 12 - 48 * x .^ 2 + 16 * x .^ 4;
  h5 = 120 * x - 160 * x .^ 3 + 32 * x .^ 5;
  
  plot(x, h0, x, h1, x, h2, x, h3, x, h4, x, h5);
  ylim([-50 50])
  
  legend(arrayfun(@(n) sprintf('\\fontsize{20}H_{%d}[x]', n), 0:5, 'UniformOutput', false));
  title 'Hermite polynomials'
endfunction