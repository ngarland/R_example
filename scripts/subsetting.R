# R Subsetting
# n8
# Version 0.1

# Create vector
x <- c(5.4,6.2,7.1,4.8,7.5)

names(x)<-letters[1:5]

x[1]
x[1:3]
x[c(1,2,3)]

x[c(1,1,1)]

x[c(-1,-3)]

# One way to pull out middle 3 elements
tail(head(x,4),3)
# Another way
x[(2:4)]
# Another
x[c(2,3,4)]


# Subsetting by name

names(x) =="b"
x[names(x)=="b"]


which(names(x)=="b")

x[-which(names(x)=="b")]



# multiple conditions
# | or 
# & and
# ! negative != not equal

?is.na
is.na(x)
help(na.omit)
is.na(c(x,NA))
na.omit(c(x,NA))


#subsetting matrices

m<-matrix(rnorm(24),ncol=4,nrow=6)
m
class(m)
is.matrix(m)
is.vector(m)
is.double(m)


m[1]

m[2,2]


as.matrix(m[,2])

class(m[1,,drop=FALSE])

class(m[1,])


ls()
rm(Aus_pop2)
ls()




# List subsetting

xlist <- list(a="Software Carpentry",b=1:10,data=head(gapminder$gdpPercap))
xlist

str(xlist)


xlist[1]
xlist$a
xlist[[1]]


class(xlist[1])
class(xlist$a)
class(xlist[[1]])
xlist$b[2]


# subsetting data frames

ls()
rm(xist)
ls()
names(gapminder)
        

class(head(gapminder[3]))

class(head(gapminder["pop"]))

class(head(gapminder$pop))


?as.data.frame


dim(gapminder[which(gapminder$year==1957),])

dim(gapminder[gapminder$year==1957,])

(gapminder[gapminder$year==1957,])


