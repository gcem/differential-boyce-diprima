# this file is very ugly

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
  
  anim1 = @() comet(y1,y3, 15 / numel(y1));
  anim2 = @() comet(y2,y4, 15 / numel(y2));
  subplot(3,3,8)
  set(gca, 'ButtonDownFcn', anim1);
  title 'CLICK ON THIS PLOT!'
  subplot(3,3,9)
  set(gca, 'ButtonDownFcn', anim2);
  title 'CLICK ON THIS PLOT!'
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