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
## @deftypefn {} {@var{retval} =} q14a (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-16

##function retval = q14a (input1, input2)
##  t = linspace(0, 100, 1000);
##  y = 0.1*t - cos(t) / 5 - log(2);
##  plot(t, y)
##  ax
##  grid minor
##endfunction

function retval = q14a (input1, input2)
  t = linspace(0, 30, 1000);
  y = exp(t/10 - cos(t)/5);
  plot(t, y);
  hor(2) # doubles here
  ax
  grid minor
endfunction
