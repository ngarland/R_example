# R reading data
# Author: n8
# Date: 01/10/15
# Version 0.1


# read data file using read.csv
gapminder <- read.csv(file="gapminder-FiveYearData.csv")

gm <- read.table(file = "gapminder-FiveYearData.csv",header=TRUE,sep=",")


identical(gm,gapminder)

save (gapminder,file="gapminder.RData")


load("gapminder.RData")

# subset by function using column comparison
names(gapminder)
Aus <- subset(gapminder,country=="Australia")


# subset by row number
Aus2 <- gapminder[61:72,]


Aus_pop <- gapminder[61:72,3]
Aus_pop2 <- subset(gapminder, country="Australia",select="pop")


