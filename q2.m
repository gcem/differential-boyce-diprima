function q2  phi = @(t) 1/2*(1 - exp(-t).*(sin(t) + cos(t)));  t = linspace(0, 20, 1000);  y = exp(-t).*sin(t) + us(t-pi) .* phi(t-pi) - us(t-2*pi) .* phi(t-2*pi);  h = us(t - pi) - us(t - 2*pi);    plot(t, y, t, h);  legend('y(t)', 'h(t)');  ylim([-.2 1.2])  xticks(0:pi:20)  grid onendfunction