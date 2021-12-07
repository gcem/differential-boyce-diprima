# copied from q30. this is in a separate file to keep things clear
function q30f
  t = linspace(0, 30, 1000);
  sn1 = sin(t);
  cs1 = cos(t);
  sn2 = sin(5/2*t);
  cs2 = cos(5/2*t);
  
  A = [1 0 8 0; 1 0 -6 0; 0 1 0 20; 0 1 0 -15];
  AInv = inverse(A);
  
  initPt = [1 2 4 -4]';
  c = AInv * initPt;
  
  y1 = c(1)*cs1 + c(2)*cs1 + 8 * (c(3)*cs2 + c(4)*sn2);
  y2 = c(1)*cs1 + c(2)*cs1 - 6 * (c(3)*cs2 + c(4)*sn2);
  y3 = -c(1)*sn1 + c(2)*cs1 - 20 * (c(3)*sn2 - c(4)*cs2);
  y4 = -c(1)*sn1 + c(2)*cs1 + 15 * (c(3)*sn2 - c(4)*cs2);
  
  # plots
  subplot(1,3,1)
  plot(t, y1, t, y2);
  legend y_1 y_2
  ax
  xlabel t
  title({'y_1 and y_2 vs t';'CLICK HERE TO QUIT!'})
  
  subplot(1,3,2)
  plot(y1, y3)
  xlabel y_1
  ylabel y_3
  title 'y_3 vs y_1'
  
  subplot(1,3,3)
  plot(y2, y4)
  xlabel y_2
  ylabel y_4
  title 'y_4 vs y_2'
  
  # animation
  ind = 1;
  subplot(1,3,2)
  hold on
  p1 = plot(y1(ind), y3(ind), 'ro', 'linewidth', 2);
  subplot(1,3,3)
  hold on
  p2 = plot(y2(ind), y4(ind), 'ro', 'linewidth', 2);
  subplot(1,3,1)
  hold on
  line = plot([t(ind) t(ind)], ylim, 'r', 'linewidth', 2, 'handlevisibility', 'off');
  
  anim = true;
  function stopanim
    anim = false;
  endfunction
  
  # I could put the below loop inside a callback, which would be more
  # elegant. however there is a bug causing some variables not to be captured
  # by nested functions. that's why the loop is run synchronously.
  set(gca, 'ButtonDownFcn', @stopanim);
  
  ind = 1
  while anim
    set(p1, 'xdata', y1(ind), 'ydata', y3(ind));
    set(p2, 'xdata', y2(ind), 'ydata', y4(ind));
    set(line, 'xdata', [t(ind) t(ind)]);
    ind++;
    if ind > numel(y1)
      ind = 1;
    endif
    pause(1e-3); # controls the speed
  endwhile
  close # can delete this line to keep the plot after the click
endfunction