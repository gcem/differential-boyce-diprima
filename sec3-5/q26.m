function q26
  syms t a b c d f g real;
  y = sin(2*t) * (a*t^2 + b*t + c) * t + cos(2*t) * (d*t^2 + f*t + g) * t;
  ddy = diff(y, t, t);
  
  lhs = expand(ddy + 4*y)
  rhs = t^2 + sin(2*t) + 6*t*cos(2*t) + 7*cos(2*t)
endfunction
