## Copyright (C) 2021 cem
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} q22 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-18

function retval = q22 (input1, input2)
  g = 9.8;
  m = 0.15;
  v0 = 20;
  x0 = 30;
  p = sqrt(1325*m*g);
  
  tmax = sqrt(1325*m/g) * atan(20/sqrt(1325*m*g));
  
  tt = linspace(-3, tmax, 1000);
  tt2 = linspace(tmax, 8, 1000);
  x = @(t) p*p/g*log(abs(cos(-g*t/p + atan(20/p)))) + 30 - p*p/g*log(p/sqrt(400 + p*p));
  v_up = @(t) sqrt(1325*m*g) * tan(-t*sqrt(g/(1325*m)) + atan(20/sqrt(1325*m*g)))
  v_down = @(t) p * (2 ./ (1 + exp(2 * g / p * (t - tmax))) - 1);
  
  hmax = x(tmax);
  
  u = @(t) 1 + exp(2*g/p*(t-tmax));
  x_down = @(t) p*p/(2*g)*log((u(t)-1)./power(u(t),2)) + hmax - p*p/(2*g)*log((u(tmax)-1)/power(u(tmax), 2));
  
  umax = u(tmax);
  t_gnd = tmax + p/(2*g)*log(2/(1 - sqrt(1 - 4*exp(-2*g/(p*p)*hmax + log((umax - 1)/(umax*umax))))) - 1);
  
  printf("Max height is %f meters at time %f seconds.\n", hmax, tmax);
  printf("Hits ground at %f seconds.\n", t_gnd);
  hh = x(tt);
  hh2 = x_down(tt2);
  vv = v_up(tt);
  vv2 = v_down(tt2);
  plot(tt, vv, tt2, vv2, tt, hh, tt2, hh2)
  grid minor
  #xlim([-3, 9])
  ax
  hor(hmax)
  vert(tmax)
  vert(t_gnd)
  legend("v_{up}", "v_{down}", "h_{up}", "h_{down}", sprintf("hmax = %f", hmax), sprintf("tmax = %f", tmax), sprintf("t_{gnd} = %fs", t_gnd))
  title Question22
  
endfunction
