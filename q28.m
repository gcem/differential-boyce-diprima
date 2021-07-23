function q28
  syms t a b c d f g h k l m real;
  
  ys = [exp(-t) * (cos(2*t) * (a*t + b) + sin(2*t) * (c*t + d)) * t + exp(-2*t) * (cos(t) * (f*t + g) + sin(t) * (h*t + k))];
  results = [3*t*exp(-t)*cos(2*t) - 2*t*exp(-2*t)*cos(t)];
  
  for z = 1:length(ys)
    equations = [];
    y = ys(z);
    dy = diff(y, t);
    ddy = diff(dy, t);
    
    lhs = expand((ddy + 2*dy + 5*y));
    rhs = results(z);
    
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
        if sum(has(vars, t)) == 0 # division result has no a
          used(zzz) = true;
          coefficients += division;
        endif
      endfor
      coefficients += 1; # for chd(zz)
      
      vars = findsymbols(chd(zz));
      nota = vars(!has(vars, t));
      if length(nota)
        coefficients *= nota{1};
      endif
      
      equations = [equations, expand(coefficients)];
    endfor
    sln = solve(equations == 0);
    if isstruct(sln)
      for [v, key] = sln
        printf('%s = \n', key)
        disp(v)
      endfor
    else
      printf('%s = \n', findsym(equations))
      disp(sln)
    endif
    printf('\n\n')
  endfor
endfunction
