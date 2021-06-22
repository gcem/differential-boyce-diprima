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
## @deftypefn {} {@var{retval} =} q30e (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-21

function retval = q30e (input1, input2)
  g = 32; # ft/s^2
  u = 125;
  h = 3;
  u = 110;
  L = 350;
  H = 10;
  
  clf
  subplot(2,1,1);
  
  f = @(A) -g/2*power(L./(u * cos(A)), 2) + u * sin(A) .* (L ./ (u * cos(A))) + h - H;
  sln1 = fsolve(f, 0);
  sln2 = fsolve(f, sln1 + 0.2);
##  a = linspace(0, pi/2 * 0.8);
##  a = linspace(0.75, 0.9);
  a = linspace(.5, 1);
  plot(a, f(a));
  grid minor;
  ax;
  vert(sln1)
  vert(sln2)
  xlabel A
  legend 'value that must be positive so that the wall is cleared'
  
  subplot(2,1,2);
  hold on
  
  g = 32; # ft/s^2
  u = 110;
  h = 3;
  
  t = linspace(0, 7);
  for A = [sln1, sln2]
    x = u * t * cos(A);
    y = -g * t .* t / 2 + u * t * sin(A) + h;
    plot(x, y, 'displayname', sprintf('A = %f', A));
  endfor
  ax
  grid minor
  
  # the wall at part e
  plot([L, L], [0,H], 'r', 'linewidth', 2, 'displayname', 'wall');
  legend show
  
endfunction
