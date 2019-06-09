# masteringRskills

This repo contains the package I created on R. The package contains 5 functions:

* `eurusd`              - looks up the most recent USD to EUR exchange rate via an API and returns the rate as a number
* `eurusds`             - takes two arguments, date_from and date_to, and returns a data.table object on the daily exchange rates
* `convert_usd_to_eur`  - looks up the most recent USD to EUR exchange rate and computes the provided USD amount in EUR
* `eur`                 - formats a number to a string using the Euro sign, rounds up to 2 digits and separates with a comma
* `uneur`               - transforms a string into a number
