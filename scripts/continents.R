env/ Rscript
# Title: continents plotting
# Author: nathan
# 2 oct 15

# call a package to make it available
library(ggplot2)

#yolo

# assuming we have a data folder containing gapminder.RData
load("data/gapminder.RData")

# function for scatter plot for continents
# changes changes
# IN: df - data.frame class
# OUT: none - graphical output of plot from df
draw_dots_continent <- function(df){
  
  #plot life exp against year over each continent
  p <- ggplot(data=df,aes(x=year,y=lifeExp, color=country)) +  
    geom_point(aes(color=continent)) + # color each continent
    facet_grid(.~ continent) + # force multi plot
    theme(legend.position="none") + # remove legend
    theme(axis.text.x  = element_text(angle=90)) # rotate x axis tick labels
  
  # display plot
  print(p)
}

# define function to export via png
make_pngplot <- function(name){
  # cat chosen extension to data filename and open output pipe
  png(file=paste(name,".png",sep=""))
  # generate plot
  draw_dots_continent(gapminder)
  #close output pipe
  dev.off()
  
  
}

# receive user input
arg <- commandArgs(TRUE)

try(make_pngplot(arg[1]))


    
    

