function q13
  f = @(r) 900*(1./(r-1) - r.^-240 ./ (r - 1)) - 95e3;
  sln = fsolve(f, 1.0001);
  disp(sln)
  disp((sln-1) * 12)
endfunction
