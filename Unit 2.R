# create R object by the name work.hours
work.hours <- c(5,6,3,3,2,4,7,5,2,3,5,6,5,4,4,3,5,2,5,3)
table(work.hours)
freq <- table(work.hours)
sum(freq)
freq/sum(freq)
sum(freq/sum(freq))
cumsum(freq/sum(freq))
ex.1 <- read.csv("ex1.csv")
ex.1