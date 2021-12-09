function qe3
  A = [1 1; 4 1];
  T = [-1 1; 2 2];
  Tinv = [-1/2 1/4; 1/2 1/4];

  T * Tinv
  Tinv * A * T
endfunction
