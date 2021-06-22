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
## @deftypefn {} {@var{retval} =} q5 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-15

function retval = q5 (input1, input2)
  f = @(t) 25 + 25 / 5002 * sin(t) - 625 / 2501 * cos(t) + ...
    (25 + 1250 / 502) * exp(-t / 50);
  t = linspace(0, 400, 5000);
  salt = f(t);
  plot(t, salt);
  xlabel "Time (min)"
  ylabel "Salt (oz)"
  grid minor
  equil = salt(end-50:end);
  lo = min(equil);
  hi = max(equil);
  mid = (lo + hi) / 2;
  hor(lo);
  hor(hi);
  hor(mid);
  legend("Salt", ...
    sprintf("Low: %d oz", lo), ...
    sprintf("High: %d oz", hi), ...
    sprintf("Mid: %d oz", mid));
  ax
  ylim([0, 55])
endfunction
