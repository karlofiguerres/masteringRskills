#' Transforms a string into a number
#' @param eur value to be transformed
#' @return integer
#' @export
#' @examples
#' uneur(€1)
#' eur(€25275.156)
#' eur(€-31525)
uneur <- function(str) {
  str <- gsub(",", "", substring(str,2))
  str <- as.numeric(str)
  str
}
