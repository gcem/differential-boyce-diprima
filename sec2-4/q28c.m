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
## @deftypefn {} {@var{retval} =} q28c (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-21

function retval = q28c (input1, input2)
  m = 0.25;
  g = 9.8;
  
  ks = linspace(0.01, 1);
  vs = [];
  
  for k = ks
    # height from ground for k, with x(0) = 30 meters
    x = @(v) 30 - (-m*v/k - m*m*g/(k*k)*log(max([0, m*g - k*v])) - -m*m*g/(k*k)*log(m*g));
  
    vv = fsolve(x, 2.9); # find the final speed (solution v of x(v) = 0)
    vs = [vs, vv];
  endfor
  
##  plot(ks, vs);
  area(ks', [vs', max(vs) - vs'])
  hold on
  plot(ks, vs, 'w--', 'linewidth', 3)
  legend('v values that will be attained during the flight', 'v values that won''t be reached', 'v_{final}')
  xlabel 'k (N / (m/s))'
  ylabel 'velocity (m/s)'
  hor(10, 'name', 'v = 10m/s')
  legend show 
  
##  vv = linspace(0, m*g/k, 10000); # mg/k is the limiting velocity
##  xx = x(vv);
##  plot(xx, vv);
##  ax
##  xlabel height
##  ylabel speed
##  vert(30, 'name', 'x=30m (a)')
##  hor(10, 'name', 'v=10m/s (b)')
##  legend show

endfunction
