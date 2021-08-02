function c = q12
  coef = [1 1 1 0; 1 -3 0 2; 1 9 -4 0; 1 -27 0 -8];
  rhs = [3 + 2/5 - 1/20; 4/5 + 1/20; -1 - 2/5 - 1/20; 2 - 4/5 + 1/20];
  c = coef \ rhs;
  
  t = linspace(0, 4, 1000);
  y = -4/5*sin(t) - 2/5*cos(t) + 1/20*exp(-t) + c(1) * exp(t) + c(2) * exp(-3*t) +...
    c(3) * cos(2 * t) + c(4) * sin(2 * t);
  plot(t, y)
endfunction
