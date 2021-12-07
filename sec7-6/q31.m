# modified (better) version of q30

function q31
  t = linspace(0, 10, 1000);
  
  # arbitrary constants
  c1 = 1;
  c2 = 3;
  c3 = 2/5;
  c4 = 4/5;
  
  # part d
  drawPlots(t,c1, c2, 0, 0,1);
  
  drawPlots(t,0, 0, c3, c4,2);
  
  # part e
  t = linspace(0, 200, 1000);
  
  A = [1 0 1 0; 1 0 -1 0; 0 1 0 -sqrt(3); 0 1 0 sqrt(3)];
  AInv = inverse(A);
  
  initPt = [-1 3 0 0]';
  c = AInv * initPt # gets printed
  
  [y1,y2,y3,y4] = drawPlots(t,c(1), c(2), c(3), c(4), 3);
  
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
  
  ind = 1;
  # stop when figure is closed
  # (figure can be closed in the middle of the loop but whatever)
  while !isempty(get(groot, 'currentfigure'))
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

function [y1,y2,y3,y4] = drawPlots(t, c1, c2, c3, c4, row)
  sn1 = sin(t);
  cs1 = cos(t);
  sn2 = sin(sqrt(3)*t);
  cs2 = cos(sqrt(3)*t);

  # first mode
  y11 = y12 = c1 * cs1 + c2 * sn1;
  y13 = y14 = -c1 * sn1 + c2 * cs1;
  
  # second mode
  y21 = (c3 * cs2 - c4 * sn2);
  y22 = y21 * -1;
  y23 = sqrt(3) * (-c3 * sn2 - c4 * cs2);
  y24 = y23 * -1;

  y1 = y11 + y21;
  y2 = y12 + y22;
  y3 = y13 + y23;
  y4 = y14 + y24;
  
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