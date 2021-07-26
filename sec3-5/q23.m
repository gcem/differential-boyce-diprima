function retval = q23
  pkg load symbolic
  syms t a b c d ee f real;
  ys = [...
    exp(t)*(a*cos(2*t) + b*sin(2*t)),
    exp(2*t) * (c*cos(t) + d*sin(t) + ee*cos(t)*t + f*sin(t)*t)];
  results = [exp(t) * cos(2*t), (3*t + 4) * sin(t)];
  for m = 1:length(ys)
    y = ys(m);
    dy = diff(y, t);
    ddy = diff(dy, t);
    if m == 2
      lhs = expand((ddy - 5 * dy + 6*y) / exp(2*t))
    else
      lhs = expand(ddy - 5 * dy + 6*y)
    endif
    rhs = results(m)
    printf('\n')
  endfor
endfunction
