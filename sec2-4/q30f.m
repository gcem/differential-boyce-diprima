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
## @deftypefn {} {@var{retval} =} q30f (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-21

function retval = q30f (input1, input2)
  g = 32; # ft/s^2
  u = 125;
  h = 3;
  u = 110;
  L = 350;
  H = 10;
  
  f = @(A) -2 * L * sin(A) .* sin(A) + 2 * sin(A) .* cos(A) * (H - h) + L;
  Aopt = fsolve(f, 0.2)
  uopt = L / cos(Aopt) * sqrt(g / (2 * (L * tan(Aopt) + h - H)))
endfunction
