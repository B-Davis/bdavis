#' Base Change
#'
#' Takes a number of any base 1-26 and returns the same number with the base of your choice (1-26)
#' @param x a number; must be alphanumeric for base greater than 10
#' @param base.origin integer or character; 1-26 indicating base of x. Must a character value for alphanumeic numbers
#' @param base.out a number; 1-26 indicating base of returned x
#' @return number in base of choice
#' @examples
#' base.change("39F2",16,2) # hexadecimal to binary
#' paste(base.change(989,10,16),base.change(2002633725,10,16),sep=".") # PIT code 989.2002633725 from decimal to hexadecimal
#' @export

base.change<-function(x,base.origin,base.out) {
  x <- as.character(x)
  x <- strsplit(x,"")
  x <- x[[1]]
  b <- cbind(rep(10:35,2),c(letters,LETTERS))
  x[x %in% b[,2]] <-unlist(lapply(1:length(x),function(i) b[x[i] == b[,2],1]))
  x <- as.numeric(x)
  x <- sum((base.origin ^ ((length(x) - 1):0)) * x)
  while (x[length(x)] %/% base.out != 0) {
    x[length(x) + 1] <- x[length(x)] %/% base.out
  }
  o <- x %% base.out
  o[which(o > 9)] <- LETTERS[o[which(o > 9)] - 9]
  noquote(paste(rev(o),collapse = ""))
}
