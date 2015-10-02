# R Basics material
# Author: n8
# Date: 01/10/15
# Version 0.1

# get working directory
getwd()
# set working directory to data folder
setwd("/Users/nag/Desktop/R Workshop/R_fundamentals/data/")

getwd()

# how to cite R
citation()

# basic math operations
52-13

# logicals 
1==1 
1!=1



# assign value to vars
var <- "hello"
print(var)


num <- 1:5

num ^ 2

ls()

rm("num")

ls()

rm (list=ls())

ls()

pop <- 10000000
gdpPercap <- 780.4
gdp <- pop * gdpPercap

ls()



# how to get help 
# syntax 1 : ?functionnme
# syntax 2 : help(functionname)

?summary

?"for"

?mean

args(mean)
args(read.table)


??read.table


#####


help("c")

help("save")


# types of objects
# logical
# char
# int
# double
# complex


# use is.character() is.complex() etc to determine type

# clear environment
ls()
rm(list=ls())
ls()


# create vector with function
x <- vector()
x
x <- vector(length=10)
x
x <-vector("integer",length=10)
x
x <- vector("character",length=5)
x

series1 <-1:10
series1

series2 <- seq(10)
series2

series3 <- seq(1,10,by=2)
series3


# create variable week that has names of the week. use c() function
week <- c("Sun","Mon","Tue","Wed","Thu","Fri","Sat")
class(week)
typeof(week)
is.numeric(week)
is.data.frame(week)
is.vector(week)


# how many elements in vector
length(week)

append(week,TRUE)
length(week)
week
week <- append(week,TRUE)
week
head(week,-1)
week

week <- head(week,-1)
week




# series

s1 <- sample(1:10,10)
s2 <- sample(1:10,10,replace=TRUE)


# factor example

brothers <- factor(c("yes","yes","yes","yes","no","no"))
brothers
is.factor(brothers)

?str
str(brothers)


levels(brothers)
unique(brothers)


#
?as.integer
rm(list=ls())



test_ints <- as.integer(1:10)
test_vec <- 1:10

test_vec <- vector(mode="double",length=10)
test_vec <- c(1:10)
test_vec1 <- as.vector(test_vec, mode="double")

testints = as.integer(test_vec1)

help(names)
names(testints)
names(testints)[3] <- "three"
names(testints)[4] <- "four"
names(testints)
testints

help(factor)


continents <- factor(c("Asia","Australia","Africa","Antarctica","Europe","North America","South America"))


# matrices data structure
y <- matrix(1:16,nrow=4)
y

y <- matrix(1:16,nrow=4,byrow=TRUE)
y
m <- y
names(m)
help(names)

colnames(m) <- c("A","B","C","D")
names(m)
m
letters(1:4)
LETTERS(1:4)
letters[1:4]



# lists data structure

ls () 
rm(list=ls())
ls()


x <- 1:10
y <- matrix(1:12,nrow=3)
z <- "Nathan"
my.list <- list(x,y,z)

my.list


types_vec <- c(1,TRUE,as.complex(pi),as.integer(5),"hello")
help(vector)
as.vector(types_vec)



ls()
save(my.list,file="mylist.RData")
rm(list=ls())
ls()
getwd()
load("mylist.RData")
ls()
my.list


# Most data stored in data frames. similiar to matrices but each column can have differenet type

rm(my.list)
L1<-letters[1:3]


num <- 1:30


height <- rnorm(30,mean=1.80,sd=0.3)
height


df <- data.frame(id=num,height=height, cat=L1)
df


typeof(dt)
class(dt)
typeof(df)
typeof(df)
class(df)
is.data.frame(df)
str(df)


# plotting in R
# barplot
barplot(df$height)


# Add colours to plot

barplot(df$height,col=df$cat)


#order df
dfordered <- df[order(df$cat),]
dfordered


barplot(dfordered$height,col=dfordered$cat)



length(df)
length(df$height)

dim(df)
names(df)
nrow(df)
ncol(df)
summary(df)
str(df)


df <- cbind(df,6:1)
df
class(df)
names(df)
names(df)[4]<-"SixtoOne"
names(df)

df <- cbind(df,capsLetters=LETTERS[1:6])
head(df)
df


?rbind()


df <-rbind(df,list(31,1.70,"a",1,"F"))

x <- rbind(head(df,5),head(df,3))


getwd()
setwd("/Users/nag/Desktop/R Workshop/R_fundamentals/data")
           


list.files()


