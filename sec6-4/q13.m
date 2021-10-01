%%% full solution is in wxMaxima, this was copied from there
function q13
  t = linspace(0, 10*pi, 10000);
  y = @(t) 1/4+1/12*cos(2*t)+(-1)/3*cos(t)+1/3*us(t-pi).*(sin(t)+1/2*sin(2*t));
  plot(t, y(t))
  title 'See wxMaxima script'
  ax
endfunction