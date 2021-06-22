
function retval = q15c(input1, input2)
  for k = 1:5
    close
  endfor
  
  ks = [1/10, 1/8, 1/5, 1/2, 1];
  critys = [];
  
  for k = ks
    figure
    f = @(y, t) (1 + sin(t)) * y / 5 - k;
    t = linspace(0, 40, 1000);
    hold on
    for y0 = 0.1:0.002:10
      y = lsode(f, y0, t);
      if (min(y) <= 0) # they are extinct
        continue
      endif
      # lowest y0 for which not extinct
      plot(t, y);
      ax
      grid minor
      title(sprintf("k = %f, y0 = %f", k, y0))
      critys = [critys, y0];
      break
    endfor
  endfor
  
  figure
  plot(ks, critys, 'o');
  xlabel "k"
  ylabel "y_0 critical"
  ax
  grid minor
endfunction