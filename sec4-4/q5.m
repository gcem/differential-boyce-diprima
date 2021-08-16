function q5
  pkg load symbolic
  syms t;
  u1dot = exp(-2*t) * sin(t) / 2
  u1 = simplify(int(u1dot))
  u2dot = exp(-t) / 4 * (1 - cos(2*t) - sin(2*t))
  u2 = simplify(int(u2dot))
  u3dot = exp(-t) / 2 * (-sin(2*t) / 2 - sin(t)^2)
  u3 = simplify(int(u3dot))
  
  y = simplify(exp(t) * u1 + cos(t) * u2 + sin(t) * u3)
endfunction
