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
## @deftypefn {} {@var{retval} =} q30c (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-21

function retval = q30c (input1, input2)
  g = 32; # ft/s^2
  u = 125;
  h = 3;
  
  t = linspace(0, 7);
  clf
  hold on
  
  for A = [-pi/4, -pi/10, 0, pi/10, pi/8, pi/6, pi/3, pi * 0.49, pi * 2 / 3]
    x = u * t * cos(A);
    y = -g * t .* t / 2 + u * t * sin(A) + h;
    plot(x, y);
  endfor
  legend(strcat('A = ', {'-\pi/4', '-\pi/10', '0', '\pi/10', '\pi/8', '\pi/6', '\pi/3', '\pi * 0.49', '\pi * 2 / 3'}))
  ylim([-500, 500])
  ax
  grid minor
  
  # the wall at part e
  plot([350,350], [0,10], 'r', 'linewidth', 2, 'displayname', 'wall');
  
  title Question30c
endfunction
