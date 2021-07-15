function q14
  clf
  hold on
  helper(.2)
  helper(.4)
  helper(.6)
  helper(.8)
  
  helper(.3)
  legend show
  grid minor
endfunction

function helper(u0)
  rho = 3.2;
  u = zeros(1, 20);
  u(1) = u0
  
  for k = 2:length(u)
    u(k) = rho * u(k-1) * (1 - u(k-1));
  endfor
  
  plot(0:length(u)-1, u, 'displayname', sprintf('u_0 = %d', u0));
  xlabel n
  ylabel u_n
endfunction