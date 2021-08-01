function q25
  pkg load symbolic
##  Without symbolic
##  r = roots([18 21 14 4])
  r = solve(poly2sym([18 21 14 4]))
endfunction
