function q7
  A = [1 0 0; 2 1 -2; 3 2 1];
  df3(A, 3, 10)
  slns3(@f);
  xlabel x_1
  ylabel x_2
  zlabel x_3
endfunction

function x = f(t, c1, c2, c3)
  c = cos(2*t);
  s = sin(2*t);
  x = exp(t) .* (c1*[2;-3;2] + c2*[0*t;c;s] + c3*[0*t;s;-c]);
endfunction