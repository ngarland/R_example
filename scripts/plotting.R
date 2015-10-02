# R plotting
# n8
# 2 oct 15

#installing packages
install.packages("ggplot2")

#check installed packages
installed.packages()

# call a package to make it available
library(ggplot2)


# new function to explore data.frame
# receives df for a data frame
exploring_data.frame <- function(df){
  
  #explorative functions for a data frame
  
  # check the size of the data.frame
  print(dim(df))
  # check names of cols
  print(names(df))
  
  
  print(summary(df))
  
  print(str(df))
  
  
}

ls()
exploring_data.frame(gapminder)


# quick example to use ggplot2
# function to create a plot using ggplot2

ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap)) + geom_point()

# adding colours by continent
ggplot(data=gapminder,aes(x=lifeExp,y=gdpPercap, color=continent)) +  geom_point() + ggtitle("Life expectancy vs GDP per capita")

ggsave(file="LifeExpvGDPPlot.png")

# multifigure plot example

ggplot(data=gapminder,aes(x=year,y=lifeExp, color=country)) +  
  geom_point(aes(color=continent)) + 
  facet_grid(.~ continent) +
  theme(legend.position="none") + 
  theme(axis.text.x  = element_text(angle=90))
                                                                          