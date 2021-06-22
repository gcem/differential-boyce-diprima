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
## @deftypefn {} {@var{retval} =} qe3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-15

function retval = qe3 (input1, input2)
  f = @(t) 2e7 + 1/17 * 1e7 * (sin(2*t) - 4 * cos(2*t)) + exp(-t / 2) * (-3e8 / 17);
  t = linspace(0, 20);
  salt = f(t) / 1e6; # convert to million grams (tonnes)
  plot(t, salt);
  ax;
  xlabel "Time (years)"
  ylabel "Salt (Mg)"
  hor(20);
endfunction
