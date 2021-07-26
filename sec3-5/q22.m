function retval = q22
  pkg load symbolic
  syms t a b c d ee f g h k l real;
##  y = a*t^5 + b*t^4 + c*t^3 + d*t^2 + ee*t + exp(-3*t)*(f*t^2 + g*t + h) + k*sin(3*t) + l*cos(3*t);
  ys = [...
    a*t, ...
    t*(b*sin(t) + c*cos(t) + d*t*sin(t) + ee*t*cos(t))];
  results = [t, t*sin(t)];
  for m = 1:length(ys)
    y = ys(m);
    dy = diff(y, t);
    ddy = diff(dy, t);
    lhs = simplify(ddy + y)
    rhs = results(m)
    printf('\n')
  endfor
##  solve(lhs - rhs == 0, a, b, c, d, ee, f, g, h, k, l)
endfunction
