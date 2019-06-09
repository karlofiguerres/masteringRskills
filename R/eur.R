#' Formats a number to a string using the Euro sign, roounds up
#' @param usd amount in USD to be converted to EUR
#' @return number
#' @export
#' @importFrom httr GET content
#' @importFrom logger log_info
#' @examples
#' convert_usd_to_eur(10)
#' convert_usd_to_eur(25)
convert_usd_to_eur <- function(usd) {
  eurusd() * usd
}
