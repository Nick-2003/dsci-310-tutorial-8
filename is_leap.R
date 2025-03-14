library(testthat)
library(dplyr)

# Calculates whether or not a particular year is a leap year
# How the Gregorian calendar calculates leap years:
# - If the year is divisible by four, it’s a leap year
# - But if the year can be divided by 100 as well as four, it’s not a leap year
# - However, if the year is divisible by 400, it is a leap year
# (Divisible by 4) -> (Yes: (Divisible by 100) | No: FALSE)
# (Divisible by 100) -> (Yes: (Divisible by 400) | No: TRUE)
# (Divisible by 400) -> (Yes: TRUE | No: FALSE)
# Process:
# - Take in a number as an input
# - Return a value for True if it is a leap year
# - Return a value for False if it is not a leap year.

is_leap <- function(year) {
  if (year <= 0 || year %% 1 != 0) {
    return(stop()) # Throw error if year is 0 or less
  } else if (year %% 4 == 0 && year %% 100 != 0 || year %% 400 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
