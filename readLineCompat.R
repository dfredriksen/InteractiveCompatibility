#' Read Line Compatible
#' This function allows you to read input when executing your script from R studio or stdin from a Linux shell like Bash  without having to rewrite code
#'
#' Copyright (C) 2016,2017 Daniel Fredriksen
#' This program is free software: you can redistribute it and/or modify
#' it under the terms of the GNU General Public License as published by
#' the Free Software Foundation, either version 3 of the License, or
#' (at your option) any later version.
#'
#' This program is distributed in the hope that it will be useful,
#' but WITHOUT ANY WARRANTY; without even the implied warranty of
#' MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#' GNU General Public License for more details.
#'
#' You should have received a copy of the GNU General Public License
#' along with this program.  If not, see <http://www.gnu.org/licenses/>.
#'
#' This function allows you to print when executing your script from R studio or a Linux console shell like Bash without having to rewrite code
#' @param prompt The text to prompt the user with for accepting input
#' @keywords readline, input
#' @export 
#' @examples
#' readLineCompat("Enter your name:")

readLineCompat <- function(prompt)
{
  if(interactive())
  {
    return(readline(prompt=prompt));
  } 
  else
  {
    cat(prompt);
    return(readLines(file("stdin"),1));
  }
}
