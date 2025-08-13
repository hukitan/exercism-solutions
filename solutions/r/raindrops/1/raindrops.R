raindrops <- function(number) {
  x <- ""
  if (number %% 3 == 0) {
    x <- paste(x, "Pling", sep="")
  }
  
  if (number %% 5 == 0) {
    x <- paste(x, "Plang", sep="")
  }
  
  if (number %% 7 == 0) {
    x <- paste(x, "Plong", sep="")
  }
  if( x == "" ) x <- paste(x, number, sep = "") 
  
return(x)
  }
