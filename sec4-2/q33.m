function c = q33
  coef = [1 1 1 1; 1 2 -2 -1/2; 1 4 4 1/4; 1 8 -8 -1/8];
  c = coef \ [-2 0 -2 0]';
  y = @(t) c(1) * exp(t) + c(2) * exp(2*t) + c(3) * exp(-2*t) + c(4) * exp(-t/2);
  t = linspace(0, 3);
  plot(t, y(t));
  ax
  grid on
endfunction
