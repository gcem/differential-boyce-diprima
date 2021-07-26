function retval = q24
  pkg load symbolic
  syms t a b c d ee f g h real;
  ys = [...
    a*exp(-t),
    exp(-t) * t * (c*cos(t) + d*sin(t) + ee*cos(t)*t + f*sin(t)*t + g*cos(t)*t^2 + h * sin(t)*t^2)];
  results = [3*exp(-t), exp(-t)*(2*cos(t) + 4*t^2*sin(t))];
  for m = 1:length(ys)
    y = ys(m);
    dy = diff(y, t);
    ddy = diff(dy, t);
      lhs = expand((ddy + 2*dy + 2*y) / exp(-t))
    rhs = results(m) / exp(-t)
    printf('\n')
  endfor
endfunction
