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
## @deftypefn {} {@var{retval} =} q31c (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-22

function retval = q31c (r = 1/5)
  u = 125;
  h = 3;
  g = 32;
  
  # mostly copied from q30c.m
  t = linspace(0, 7);
  clf
  hold on
  
  for A = [-pi/4, -pi/10, 0, pi/10, pi/8, pi/6, pi/3, pi * 0.49, pi * 2 / 3]
    x = u / r * cos(A) * (1 - exp(-r*t));
    y = -g*t/r + h + (r*u*sin(A)+g)/(r*r)*(1-exp(-r*t));
    plot(x, y);
  endfor
  legend(strcat('A = ', {'-\pi/4', '-\pi/10', '0', '\pi/10', '\pi/8', '\pi/6', '\pi/3', '\pi * 0.49', '\pi * 2 / 3'}))
  ylim([-500, 500])
  ax
  grid minor
  title(sprintf('Question31c with r = %f', r))
  
endfunction



