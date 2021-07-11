function q14
  f = @(t,y) -t .* y + .1 * y .* y .* y;
  q11_14common(f, 1)
endfunction