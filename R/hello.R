
#' hello function
#'
#' @param x this is the hare
#' @param y this is the lynx
#' @param z there is no z
#'
#' @return data.frame
#' @export
#'
#' @examples hello(hi, hi, hi)
hello <- function(x, y, z) {
  print("Hello, world!")
}


#' g of hp function
#'
#' @param c this is a constant
#' @param h this is a hare
#' @param d this is something
#'
#' @return a math value
#' @export
#'
#' @examples
g_of_hp <- function (c,h,d) {
  ch <- c*h
  chd <- ch-d
  return (chd)
}




#' simulation function
#'
#' @param t is time
#' @param x is hare
#' @param y is lynx
#' @param a is some constant
#' @param b is some constant
#' @param c is some other constant
#' @param d is some other constant
#'
#' @return returns a data frame
#' @export
#'
#' @examples
#'
simulation_one <- function(t, x, y, a, b, c, d) {
  for (t in 2:500) {
    x[t] <- x[t-1] + x[t-1] * f_of_hp(a,b,y[t-1])
    y[t] <- y[t-1] + y[t-1] * g_of_hp(c,x[t-1],d)
  }

  population_dataframe <- data_frame("t"=t, "prey"=x, "predator"=y)
  return(population_dataframe)
}
