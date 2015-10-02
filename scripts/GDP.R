# GDP function

# function define. 
GDP <- function(dat,inyear){
  # check if optional input is passed or not, if so use the subset of the chosen year
  if(missing(inyear)) {
    #
    result<- as.matrix(dat$pop * dat$gdpPercap)
    return(result)
  } else {
    #
    result <- as.matrix(dat[dat$year==inyear,]$pop * dat[dat$year==inyear,]$gdpPercap)
    return(result)
  }
  
}

test_ans <- ((GDP(gapminder)))
test2 <- ((GDP(gapminder,1957)))

