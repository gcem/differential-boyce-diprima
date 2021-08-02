function cs = q31
  coef = [1 1 e^2 e^2; 0 1 2*e^2 (2*e^2 + 1); 0 0 4*e^2 8*e^2; 0 0 8*e^2 20*e^2];
  cs = coef \ [-1 2 0 0]';
endfunction
