function retval = q3 (input1, input2)
  y0 = 1;
  f = @(t, y) 0.5 - t + 2*y;
  
  clf
  q1_4common(f, y0);
  title 'Question 3';
endfunction