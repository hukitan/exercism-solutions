leap <- function(year=0) {
  if  ( year%%4==0 && year%%100==0){
    if (year%%400==0){
      TRUE
    } else
    {FALSE}
  } else if(year%%4==0){
    TRUE
  } else {
    FALSE
  }
}
