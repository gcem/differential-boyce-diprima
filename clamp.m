function c = clamp(val, range)
  c = min(max(val, range(1)), range(2));
endfunction
