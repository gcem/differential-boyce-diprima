function q11
##  pkg load symbolic
##  syms t s;
##  y(t) = exp(t) / 2 * int(exp(-s)/cos(s), s, 0, t) - t / 2 * (sin(t) + cos(t)) + (sin(t) - cos(t)) / 2 * log(cos(t)) + 3*exp(t) / 2 + cos(t) / 2 - 5 * sin(t) / 2

  t = linspace(0, pi / 2 * .99999); # must start at 0, for lsode
  integralValues = lsode(@(y, t) 1 ./ (exp(t) * cos(t)), 0, t)';
  y = exp(t) / 2 .* integralValues - t / 2 .* (sin(t) + cos(t)) + ...
    (sin(t) - cos(t)) / 2 .* log(cos(t)) + ...
    3*exp(t) / 2 + cos(t) / 2 - 5 * sin(t) / 2;
    
  plot(t, y, [0 1], [2 1], '--r')
  
endfunction
