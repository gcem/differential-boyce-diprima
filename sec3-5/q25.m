function retval = q25
  pkg load symbolic
  syms t a b c d ee f g h k l real;
  ys = [...
    a*t^2 + b*t + c,
    exp(2*t)*(d*t + f) * t^2,
    sin(2*t) * (g*t + k) + cos(2*t) * (h*t + l)];
  results = [2*t^2, 4*t*exp(2*t), t*sin(2*t)];
  div = [1 exp(2*t) 1];
  for z = 1:length(ys)
    y = ys(z);
    dy = diff(y, t);
    ddy = diff(dy, t);
      lhs = expand((ddy - 4*dy + 4*y) / div(z))
    rhs = results(z) / div(z)
    printf('\n')
  endfor
endfunction
