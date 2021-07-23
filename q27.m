function q27
  # a is the independent variable now, so that the results get sorted
  # w. r. t. a
  syms a b c d f g h k l m real;
  
  ys = [exp(a) * (sin(2*a) * (m*a^2 + b*a + c) + cos(2*a) * (d*a^2 + f*a + g)),...
    exp(-a) * (h*sin(a) + k*cos(a)),...
    l*exp(a)];
  results = [exp(a) * (a^2 + 1) * sin(2*a), 3*exp(-a) * cos(a), 4*exp(a)];
  div = [exp(a), exp(-a), exp(a)];
  
  for z = 1:length(ys)
    equations = [];
    y = ys(z);
    dy = diff(y, a);
    ddy = diff(dy, a);
    
    lhs = expand((ddy + 3*dy + 2*y) / div(z));
    rhs = results(z) / div(z);
    
    expr = expand(lhs - rhs);
    chd = children(expr);
    used = false(size(chd));
    
    for zz = 1:length(chd)
      if used(zz)
        continue
      endif
      
      coefficients = 0;
      
      for zzz = zz+1:length(chd)
        if used(zzz)
          continue
        endif
        division = chd(zzz) / chd(zz);
        vars = findsymbols(division);
        if sum(has(vars, a)) == 0 # division result has no a
          used(zzz) = true;
          coefficients += division;
        endif
      endfor
      coefficients += 1; # for chd(zz)
      
      vars = findsymbols(chd(zz));
      nota = vars(!has(vars, a));
      if length(nota)
        coefficients *= nota;
      endif
      
      equations = [equations, expand(coefficients)];
    endfor
    sln = solve(equations == 0);
    if isstruct(sln)
      for [v, k] = sln
        printf('%s = \n', k)
        disp(v)
      endfor
    else
      printf('%s = \n', findsym(equations))
      disp(sln)
    endif
    printf('\n\n')
  endfor
endfunction
