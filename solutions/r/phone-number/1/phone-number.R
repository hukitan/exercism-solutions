parse_phone_number <- function(number_string) {
  # Remove all non-digit characters
  number_string <- gsub("[^0-9]", "", number_string)
  
  n_digits <- nchar(number_string)
  
  # If 11 digits and starts with '1', remove the country prefix
  if (n_digits == 11 && startsWith(number_string, "1")) {
    number_string <- substr(number_string, 2, 11)
    n_digits <- 10
  }
  
  # If not exactly 10 digits, it's not a valid number
  if (n_digits != 10) {
    return(NULL)
  }
  
  # Extract the first digit of the area code and the prefix
  first_digit_area <- as.numeric(substr(number_string, 1, 1))
  first_digit_prefix <- as.numeric(substr(number_string, 4, 4))
  
  # Check that the first digits are not 0 or 1
  if (first_digit_area < 2 || first_digit_prefix < 2) {
    return(NULL)
  } else {
    return(number_string)
  }
}