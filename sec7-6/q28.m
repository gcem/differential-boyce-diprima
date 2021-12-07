function q28
  subplot(1,2,1);
  slns2(@x);
  xlim([-5,5]);
  ylim([-5,5]);
  ax
  title 'Some solutions with sqrt(k/m) = 3'
  xlabel x_1
  ylabel x_2
  
  subplot(1,2,2);
  t = linspace(0, 10, 1000);
  xx = x(t, 3, 1); # arbitrary c
  plot(t, xx(1,:), t, xx(2,:))
  title 'Solution with c_1=3, c_2=1'
  legend x_1 x_2
endfunction

function ret = x(t, c1, c2)
    freq = 3;
    c = cos(freq*t);
    s = sin(freq*t);
    ret = c1 * [c;-s] + c2 * [s;freq*c];
endfunction