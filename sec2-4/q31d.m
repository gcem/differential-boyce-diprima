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
## @deftypefn {} {@var{retval} =} q31d (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-22

function retval = q31d (input1, input2)
  H = 10;
  L = 350;
  h = 3;
  g = 32;
  r = 1/5;
  
  as = linspace(pi/2 * 0.2, pi/2 * 0.9, 100); # 100 gives a precision of +-0.0112 rad.
                                              # increase if you need better results.
  us = [];
  
  for A = as;
    f = @(u) -H + h + g/(r*r)*log(1 - L*r/(u*cos(A))) + L*tan(A) + g*L/(r*u*cos(A));
    u = fsolve(f, 10);
    us = [us, u];
  endfor
  
  plot(as, us);
  xlabel 'A (rad)'
  ylabel 'u (ft/s)'
  
  grid minor
  optu = min(us);
  optA = as(us==optu)(1);
  hor(optu);
  vert(optA);
  title 'Minimum speed vs throwing angle'
  legend('minimum initial speed to clear the wall', sprintf('u = %f ft/s', optu), sprintf('A = %f rad', optA))
  
endfunction
