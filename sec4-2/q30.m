##function result = q30
function q30
  pkg load symbolic;
  syms t c1 c2 c3 c4;
  sq2 = sqrt(sym(2));
  y(t) = exp(t/sq2) * (c1 * cos(t/sq2) + c2 * sin(t/sq2)) + exp(-t/sq2) * (c3 * cos(t/sq2) + c4 * sin(t/sq2));
  result = solve([t; y; diff(y, t); diff(y, t, t); diff(y, t, t, t)] == [0; 0; 0; -1; 0]);
  for [val key] = result
    printf("%s =", key);
    disp(val);
  endfor
  
  sq2 = sqrt(2);
  ysln = @(t) exp(t/sq2) .* (double(result.c1) * cos(t/sq2) + double(result.c2) * sin(t/sq2)) + ...
    exp(-t/sq2) .* (double(result.c3) * cos(t/sq2) + double(result.c4) * sin(t/sq2));
  t = linspace(0, 20);
  subplot(2,1,1)
  yt = ysln(t);
  plot(t, yt);
  
  subplot(2,1,2)
  plot(t, log(abs(yt)) .* sign(yt));
  title "logarithmic plot to see the oscillation"
  ticks = -15:5:15;
  yticks(ticks);
  yticklabels(cellfun(@(t) sprintf("e^{%d}", t), mat2cell(abs(ticks), 1, ones(length(ticks), 1)), 'uniformoutput', false));

  ax
  grid on
endfunction
