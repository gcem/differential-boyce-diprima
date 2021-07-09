function retval = q4 (input1, input2)
  y0 = 0;
  f = @(t, y) 3*cos(t) - 2*y;
  
  clf
  q1_4common(f, y0);
  title 'Question 4';
endfunction