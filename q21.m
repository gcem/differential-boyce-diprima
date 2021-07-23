function retval = q21
  pkg load symbolic
  syms t a b c d ee f g h k l real;
##  y = a*t^5 + b*t^4 + c*t^3 + d*t^2 + ee*t + exp(-3*t)*(f*t^2 + g*t + h) + k*sin(3*t) + l*cos(3*t);
  ys = [...
    poly2sym([a b c d ee 0], t), ...
    exp(-3*t)*poly2sym([f g h 0], t), ...
    k*sin(3*t) + l*cos(3*t)];
  results = [2*t^4, t^2*exp(-3*t), sin(3*t)];
  for m = 1:length(ys)
    y = ys(m);
    dy = diff(y, t);
    ddy = diff(dy, t);
    lhs = simplify(ddy + 3*dy)
    rhs = results(m)
    printf('\n')
  endfor
  
  r1 = solve(15*a == 2, 20*a + 12*b == 0, 12*b + 9*c == 0, 6*c+6*d == 0, 2*d + 3*ee == 0);
  r2 = solve(9*f == -1, f-g == 0, 2*g - 3*h == 0);
  r3 = solve(k-l==0, 9*k+9*l == -1);
  
  retval = {r1 r2 r3};
  disp(retval)
##  solve(lhs - rhs == 0, a, b, c, d, ee, f, g, h, k, l)
endfunction
