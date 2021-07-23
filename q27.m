function q27
  # a is the independent variable now, so that the results get sorted
  # w. r. t. a
  syms a b c d f g h k l m real;
  
  ys = [exp(a) * (sin(2*a) * (m*a^2 + b*a + c) + cos(2*a) * (d*a^2 + f*a + g)) * a,...
    exp(-a) * (h*sin(a) + k*cos(a)),...
    l*exp(a)];
  results = [exp(a) * (a^2 + 1) * sin(2*a), 3*exp(-a) * cos(a), 4*exp(a)];
  div = [exp(a), exp(-a), exp(a)];
  
  for z = 1:length(ys)
    y = ys(z)
    dy = diff(y, a);
    ddy = diff(dy, a);
    
    lhs = expand((ddy + 3*dy + 2*y) / div(z))
    rhs = results(z) / div(z)
  endfor
endfunction
