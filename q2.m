function retval = q2 (input1, input2)
  y0 = 1;
  f = @(t, y) 2*y - 1;
  
  clf
  q1_4common(f, y0);
  title 'Question 2';
endfunction