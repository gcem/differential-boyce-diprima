function retval = q4 (input1, input2)
  y0 = 0;
  f = @(t, y) 3*cos(t) - 2*y;
  sln = @(t) 6/5*cos(t) + 3/5*sin(t) - 6/5*exp(-2*t);
  
  clf
  q1_4common(f, y0, sln);
  title 'Question 4';
endfunction