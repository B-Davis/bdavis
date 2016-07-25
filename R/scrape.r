#' Web Scrape
#'
#' Quick and dirty function used to scrape html content from websites (works well when applied to raw data from PTAGIS website). Function may need to be modified depending on situational needs.
#' @param url character string; url to webpage
#' @return data.frame of web content
#' @export

scrape<-function(url){
  if("package::rvest" %in% search() == F) library(rvest)
  d <- read_html(url)
  d<-html_nodes(d,xpath="body") %>%
    html_text()
  read.table(text = d, fill = T, flush = T, stringsAsFactors = F)
}
