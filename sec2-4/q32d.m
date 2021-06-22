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
## @deftypefn {} {@var{retval} =} q32d (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-22

function retval = q32d (input1, input2)
  f = @(th) 1 - cos(th) + 2*sin(th) - 2*th;
  theta = linspace(0, 1.5);
  plot(theta, f(theta));
  ax
  sln = fsolve(f, 1);
  sln
  vert(sln, sprintf('theta = %f', sln))
  legend show
  printf('Theta = %f\n k = %f\n', sln, sqrt(4/(1-cos(sln))));
endfunction
