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
## @deftypefn {} {@var{retval} =} q17b (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-17

function retval = q17b (input1, input2)
  t = linspace(0, 1200, 1000);
  T = 1e4 ./ cbrt(125 + 6 * t);
  plot(t, T);
  ax;
  hor(600)
  grid minor
  t_expected = (1 / power(600, 3) / 3 - 1e-9 / 24) * 1e12 / 2;
  vert(t_expected)
  legend('T', sprintf("t = %f", t_expected))
endfunction
