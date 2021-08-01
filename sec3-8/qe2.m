function qe2
  t = linspace(0, 100, 1000);
  w0 = sqrt(255) / 16;
  
  k = 0;
  for w = [.3 1 2] # * w0 is similar since w0 ~ 1
    k = k + 1;
    subplot(3, 1, k);
    %%%%
    mat = [(1-w*w), -w/8; w/8, 1-w*w];
    ab = inverse(mat) * [3; 0];
    a = ab(1);
    b = ab(2);
    
    c1 = 2 - a;
    c2 = (c1 - 16 * b * w) / (16 * w0);
    force = @(t) 3 * cos(w * t);
    transient = @(t) exp(-t/16) .* (c1 * cos(w0 * t) + c2 * sin(w0 * t));
    ss = @(t) a * cos(w * t) + b * sin(w * t);
    
    response = transient(t) + ss(t);
    plot(t, response, 'b', t, force(t), '--k');
    ax
    grid on
    title(sprintf('\\omega = %f', w))
  endfor
endfunction
