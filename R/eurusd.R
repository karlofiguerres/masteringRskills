#' Looks up the most recent USD to EUR exchange rate via an API and returns the rate as a number
#' @return number
#' @export
#' @importFrom httr GET content
#' @importFrom logger log_info
#' @examples
#' eurusd()
eurusd <- function() {
  response <- GET(
   'https://api.exchangeratesapi.io/latest?',
    query = list(
      base     = 'USD',
      symbols  = 'EUR'
    ))
  exchange_rates <- content(response)
  usdeur <- exchange_rates$rates$EUR
  log_info('1 US Dollar is currently equivalent to {usdeur} Euros')
  usdeur
}
