#' Head/Tails
#'
#' displays first and last 10 lines of data frame or matrix
#' @param x data frame or matrix
#' @return first and last 10 lines of data frame or matrix
#' @export

ht<-function (x) list(head = head(x, 10), tail = tail(x, 10))
