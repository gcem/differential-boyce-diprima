function q30
  t = linspace(0, 10, 1000);
  sn1 = sin(t);
  cs1 = cos(t);
  sn2 = sin(5/2*t);
  cs2 = cos(5/2*t);
  
  # arbitrary constants
  c1 = 1;
  c2 = 3;
  c3 = 2/5;
  c4 = 4/5;
  
  # first mode
  y1 = y2 = c1 * cs1 + c2 * sn1;
  y3 = y4 = -c1 * sn1 + c2 * cs1;
  
  drawPlots(t,y1,y2,y3,y4,1)
  
  # second mode
  y1 = 8 * (c3 * cs2 + c4 * sn2);
  y2 = y1 * (-6/8);
  y3 = 20 * (-c3 * sn2 + c4 * cs2);
  y4 = y3 * (-15/20);
  
  drawPlots(t,y1,y2,y3,y4,2)
  
  # part e
  t = linspace(0, 30, 1000);
  sn1 = sin(t);
  cs1 = cos(t);
  sn2 = sin(5/2*t);
  cs2 = cos(5/2*t);
  
  c1 = 10 / 7;
  c3 = 1 / 14;
  
  y1 = c1 * cs1 + c3 * 8 * cs2;
  y2 = c1 * cs1 + c3 * -6 * cs2;
  y3 = c1 * -sn1 + c3 * -20 * sn2;
  y4 = c1 * -sn1 + c3 * 15 * sn2;
  
  drawPlots(t,y1,y2,y3,y4,3)
  
  # animate
  ind = 1;
  subplot(3,3,8)
  hold on
  p1 = plot(y1(ind), y3(ind), 'ro', 'linewidth', 2);
  subplot(3,3,9)
  hold on
  p2 = plot(y2(ind), y4(ind), 'ro', 'linewidth', 2);
  subplot(3,3,7)
  hold on
  line = plot([t(ind) t(ind)], ylim, 'r', 'linewidth', 2, 'handlevisibility', 'off');
  title({'y_1 and y_2 vs t';'CLICK HERE TO QUIT!'})
  
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

function drawPlots(t, y1, y2, y3, y4, row)
  subplot(3,3,3*row-2)
  plot(t, y1, t, y2);
  legend y_1 y_2
  ax
  xlabel t
  title 'y_1 and y_2 vs t'
  
  subplot(3,3,3*row-1)
  plot(y1, y3)
  xlabel y_1
  ylabel y_3
  title 'y_3 vs y_1'
  
  subplot(3,3,3*row)
  plot(y2, y4)
  xlabel y_2
  ylabel y_4
  title 'y_4 vs y_2'
endfunction