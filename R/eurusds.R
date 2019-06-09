#' Takes two arguments, date_from and date_to, and returns a data.table object on the daily exchange rates from date_from to date_to
#' @param date_from starting date of our daily exchange rates
#' @param date_to ending date of our daily exchange rates
#' @return data.table object
#' @export
#' @importFrom httr GET content
#' @importFrom logger log_info
#' @importFrom data.table data.table
#' @examples
#' eurusds('2019-01-01', '2019-01-15')
#' eurusds('2019-01-01', '2019-01-30')
eurusds <- function(date_from, date_to) {
  response <- GET(
    'https://api.exchangeratesapi.io/history',
    query = list(
      start_at = date_from,
      end_at   = date_to,
      base     = 'USD',
      symbols  = 'EUR'
    ))
  exchange_rates <- content(response)
  usdeur <- exchange_rates$rates
  #log_info('Daily exchange rate of USD to EUR from {date_from} to {date_to} is:')
  usdeur <- data.table(
    date = as.Date(names(usdeur)), usdeur = as.numeric(unlist(usdeur))
  )
  usdeur
}
