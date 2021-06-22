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
## @deftypefn {} {@var{retval} =} q22compare (@var{input1}, @var{input2})
## Compare q20 q21 q22 plots.
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-21

function retval = q22compare (input1, input2)
  subplot(1,3,1), q20c;
  #legend location southoutside
  legend hide
  subplot(1,3,2), q21;
  #legend location southoutside
  legend hide
  subplot(1,3,3); q22;
  #legend location southoutside
  legend hide
  xlim([0,6])
  ylim([-40,60])
endfunction
