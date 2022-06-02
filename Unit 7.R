setwd('/home/sannhtet/Documents/Uopeople/Uopeople (First Year)/MATH-1280 Intro to statistics (with R)/IntroStat')
dir()
pop.2 <- read.csv("pop2.csv")
head(pop.2)
mean(pop.2$bmi)
sd(pop.2$bmi)
# Computing the expectation of the sampling distribution for the sample average of the variable
X.bar <- rep(0, 10^5)
for (i in 1:10^5){
  X.sample <- sample(pop.2$bmi, 150)
  X.bar[i] <- mean(X.sample)
}
mean(X.bar)
sd(X.bar)
?quantile
quantile(X.bar, c(0.10, 0.90))
?qnorm
qnorm(c(0.10, 0.90), mean=mean(X.bar), sd=sd(X.bar))

X.bar <- rep(0, 20)
for (i in 1:20){
  X.sample <- rbinom(5, 10, 1/6)
  X.bar[i] <- mean(X.sample)
}
X.bar
