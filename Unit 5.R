x <- seq(0,10,length=1000)
density <- dunif(x,3,7)
plot(x,density,type="l")
# cumulative probability of the Uniform(3, 7)
cdf <- punif(x,3,7)
plot(x,cdf,type="l")
#Question no 1
sum(dbinom(41:500,500,0.09))
sum(dbinom(45:50,500,0.09))

# binomial distribution
pbinom(q=5, size=10, prob=1/6)
sum(dbinom(0:5, size=10, prob=1/6))

n=10
p=.5
x=9
pbinom(x, n, p)
sum(dbinom(0:9,n,p))

# Unifrom distribution
punif(5, min=1, max=10) - punif(4, min=1, max=10)