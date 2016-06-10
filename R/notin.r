#' Not In
#'
#' Inverse of %in%. Returns a logical vector indicating nonmatches for its left operand.
#' @param x a vector; values to be nonmatched
#' @param y a vector; values to be nonmatched against
#' @return boolean vector of nonmatches
#' @export

"%nin%" <- function(x, y) !(x %in% y)
