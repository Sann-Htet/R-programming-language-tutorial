setwd("/home/sannhtet/Documents/Uopeople/Uopeople (First Year)/MATH-1280 Intro to statistics (with R)/IntroStat")
ex.1 <- read.csv("ex1.csv") # sample dataset
summary(ex.1)
pop.1 <- read.csv("pop1.csv") # entire population
summary(pop.1)
plot(table(pop.1$height)) # bar plot of the height of the entire population
sample(pop.1$height, 1) # get a random variable
X <- pop.1$height
mean(abs(X-170) <= 10) # Prob that X will be between 160 and 180
Y <- c(6.3, 6.9, 6.6, 3.4, 5.5, 4.3, 6.5, 4.7, 6.1, 5.3)
Y - 5
abs(Y - 5)
abs(Y - 5) <= 1
mean(abs(Y - 5) <= 1)

data <- c(7.2, 1.2, 1.8, 2.8, 18, -1.9, -0.1, -1.5, 13.0, 3.2, -1.1, 7.0, 0.5, 3.9, 2.1, 4.1, 6.5)
median(data)
summary(data)
round(sd(data), 3)

pop.3 <- read.csv("pop3.csv")
pop.3$type
table(pop.3$type)
summary(pop.3$time)
var(pop.3$time)
sd(pop.3$time)