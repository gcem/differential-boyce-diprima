function q12
  f = @(t, y) y .* (3 - t .* y);
  q11_14common(f, .5);
endfunction
