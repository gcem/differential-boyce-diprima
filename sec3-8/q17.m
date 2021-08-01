function q17
  w = linspace(0.2, 8, 1000);
  a = @(w) 2 ./ sqrt(w .^ 2 / 16 + (w .^ 2 - 2) .^ 2);
  
  fig = figure;
  aw = a(w);
  plot(w, aw);
  
  maxw = fminunc(@(w) -a(w), .2);
  maxa = a(maxw);

  hor(maxa)
  vert(maxw)
  
  legend show
  
  grid on
  
endfunction
