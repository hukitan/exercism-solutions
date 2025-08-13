# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  counter <-0
  if (nchar(strand1) != nchar(strand2)){
    stop("strands must be same lengths")
  } else {
    for (i in 1:nchar(strand1)) {
      if (substr(strand1, i, i) != substr(strand2, i, i)){
        counter = counter+1
      }
    } 
    print(counter)
  }
}