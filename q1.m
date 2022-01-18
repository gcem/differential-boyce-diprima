function q1
  hValues = [.05, .025];
  tValues = [.1 .2 .3 .4];
  yValues = cell(size(hValues));
  yValuesBw = cell(size(hValues)); # backward Euler method
  ydot = @(t, y) 3 + t - y;

  f = figure;
  subplot(1,2,1)
  hold on
  title 'Euler Method';
  subplot(1,2,2)
  title 'Backward Euler Method';
  hold on

  for hi = 1:length(hValues)
    h = hValues(hi);
    t = 0:h:max(tValues);
    y = zeros(size(t));
    y(1) = 1;
    for i = 1:(length(t) - 1)
      y(i + 1) = y(i) + h * ydot(t(i), y(i));
    endfor
    subplot(1,2,1)
    plot(t, y, 'displayname',
      sprintf('h = %.3f', h));
    yValues{hi} = y;
  endfor

  # print header row
  printf('Euler''s Method\n');
  printf('|   h   |');
  printf(' %7.2f |', tValues);
  printf('\n');
  printf(char('-' * ones(1, 7 + 10 * length(tValues))));
  printf('\n');

  for hi = 1:length(hValues)
    h = hValues(hi);
    printf('| %.3f |', h);
    for t = tValues
      ind = round(t / h) + 1;
      val = yValues{hi}(ind);
      printf(' %6.5f |', val);
    endfor
    printf('\n');
  endfor


  legend show
  grid on
endfunction

