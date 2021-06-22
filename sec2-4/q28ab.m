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
## @deftypefn {} {@var{retval} =} q28 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-21

function retval = q28ab(input1, input2)
  k = 0.2;
  m = 0.25;
  g = 9.8;
  
  x = @(v) -m*v/k - m*m*g/(k*k)*log(abs(k*v-m*g)) - -m*m*g/(k*k)*log(m*g);
  
  vv = linspace(0, m*g/k, 10000); # mg/k is the limiting velocity
  xx = x(vv);
  plot(xx, vv);
  ax
  xlabel height
  ylabel speed
  vert(30, 'x=30m (a)')
  hor(10, 'v=10m/s (b)')
  legend show
endfunction
