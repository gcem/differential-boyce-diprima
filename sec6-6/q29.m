function q29
  theta = linspace(0, pi, 1000);
  
  fig = figure;
  hold on;
  for time = [1, 3, 5]
    alpha = time * time * 9.81 / (pi * pi);
    x = 2 * alpha * (theta + sin(theta));
    y = alpha * (1 - cos(theta));
    plot(x, y, 'displayname', sprintf('T = %d', time));
  endfor
  legend show
  
  title 'Tautochrones on which it takes time T to reach the origin, for any starting point';
endfunction