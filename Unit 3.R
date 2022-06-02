ex.1 <- read.csv("ex1.csv")
table(ex.1$sex)
hist(ex.1$height)
boxplot(c(1,11.5,6,7.2,4,8,9,10,6.8,8.3,2,2,10,1))
summary(c(1,11.5,6,7.2,4,8,9,10,6.8,8.3,2,2,10,1))
boxplot(ex.1$height)
x <- c(9,9.5,9.5,10,10,10,10,10.5,10.5,10.5,10.5,11,11,11,11,11,
       + 11,11.5,11.5,11.5)
length(x)
x.bar <- mean(x)
x - x.bar # deviation
(x - x.bar)^2
sum((x - x.bar)^2)/(length(x)-1) # variance
sqrt(sum((x - x.bar)^2)/(length(x)-1)) # standard deviation
var(x) # variance
sd(x) # standard deviation
