function q13
  f = @(t, y) (4 - t .* y) ./ (1 + y .* y);
  q11_14common(f, -2);
endfunction
