score <- function(x, y) {
rad <- sqrt((x*x)+(y*y))
if (rad <= 1){
  10
} else if (rad <= 5){
  5
} else if (rad <= 10 ){
  1
} else {
  0
}
  
}
