#' Formats a number to a string using the Euro sign, rounds up to 2 digits and separates with a comma
#' @param amt amount to be formatted
#' @return string
#' @export
#' @examples
#' eur(1)
#' eur(25275.156)
#' eur(-31525)
eur <- function(amt) {
  amt <- round(amt, 2)
  amt <- paste0('\200', format(amt, big.mark = ",", scientific = F))
  amt
}
