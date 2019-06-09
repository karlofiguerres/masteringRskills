#' Transforms a string into a number
#' @param eur value to be transformed
#' @return integer
#' @export
#' @examples
#' uneur('€1')
#' uneur('€25,275.156')
#' uneur('€-31,525')
uneur <- function(str) {
  str <- gsub(",", "", substring(str,2))
  str <- as.numeric(str)
  str
}
