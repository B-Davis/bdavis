#' Banner Function
#'
#' Create ggplot style banners on the fly - addition to existing plot
#' @param Text, character string; text to display inside banner
#' @param size, numeric (1 stays the same, 1.2 increases size by 20% etc.); size of banner
#' @param color; banner background defaults to grey
#' @param font; defasults to bold (2)
#' @param ...; other text parameters including cex, etc.
#' @return Banner/text on top of plot
#' @export

banner<-function(Text = "", size = 1, color = "grey", font = 2, ...) {
  u <- par("usr")
  x <- u[4] - (u[4] * (1/30) * size)
  rect(u[1], x, u[2], u[4], col = color)
  text(mean(c(u[1], u[2])), mean(c(x, u[4])), Text, font = font, ...)
  box()
}
