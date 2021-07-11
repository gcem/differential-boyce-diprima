function retval = q2 (input1, input2)
  y0 = 1;
  f = @(t, y) 2*y - 1;
  sln = @(t) .5 * (1 + exp(2*t));
  
  clf
  q1_4common(f, y0, sln);
  title 'Question 2';
endfunction