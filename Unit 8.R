# Example 1
a <- 1 # max number in unifrom distribution
b <- 5 # min number in uniform distribution
n <- 75 # sample size
mu.bar <- (a+b)/2 # sample mean for normal approximation
sig.bar <- sqrt((b-a)^2/(12*n)) # sample standard deviation for normal approximation
pnorm(2, mu.bar, sig.bar) # probability of less than 2
qnorm(0.9, mu.bar, sig.bar) # 90th percentile for average score
# probability of the total sum of 75 sample is less than 200
pnorm(200/n,mu.bar,sig.bar) 
#The 90th percentile for the total stress score for the 75 students
n*qnorm(0.9,mu.bar,sig.bar)

# Example 2
x <- 1:5 # sample space
p <- rep(1/5,5) # uniform probability
n <- 75 # sample size
mu.X <- sum(x*p) # mean
sig.X <- sum((x-mu.X)^2*p) # variance
mu.bar <- mu.X # sample mean for normal approximation
sig.bar <- sqrt(sig.X/n) # sample standard deviation for normal approximation
mu.bar
pnorm(2, mu.bar, sig.bar) # probability of less than 2
qnorm(0.9, mu.bar, sig.bar) # 90th percentile for average score
# probability of the total sum of 75 sample is less than 200
pnorm(199.5/n, mu.bar, sig.bar) # with continuty correction because of the discrete values
#The 90th percentile for the total stress score for the 75 students
n*qnorm(0.9,mu.bar,sig.bar)

# Example 3
lambda <- 1/22
n <- 80
mu.bar <- 22
sig.bar <- sqrt(1/(lambda^2*n))
# The probability that the average excess time used by the 
# 80 customers in the sample is longer than 20 minutes.
1 - pnorm(20, mu.bar, sig.bar)
# The 95th percentile for the average excess time for samples of 
# 80 customers who exceed their basic contract time allowances.
qnorm(0.95, mu.bar, sig.bar)


# Example 4
# the probability that the amount of beverage in a random can is below 15.95
pnorm(15.95,16,0.1/sqrt(50))
# a threshold with the property that the probability of stopping 
# the machine in a given hour is 5%
qnorm(0.05,16,0.1/sqrt(50))

# Example 5
A <- rep(0, 10^5)
B <- rep(0, 10^5)
for (i in 1:10^5){
  X.samp <- runif(100, 1, 10) # let b = 10
  A[i] <- 2*mean(X.samp)
  B[i] <- max(X.samp)
}
# calculate MSE for A
mean(A)
var(A)
var(A) + (mean(A)-10)^2

# calculate MSE for B
mean(B)
var(B)
var(B) + (mean(B)-10)^2

# Exercise
A <- rep(0, 10^5)
B <- rep(0, 10^5)
for (i in 1:10^5){
  X.samp <- rnorm(36, 5, 15) # let mu = 5
  A[i] <- mean(X.samp)
  B[i] <- median(X.samp)
}
# calculate MSE for A
mean(A)
var(A)
sd(A)

mean(B)
var(B)
sd(B)

var(c(4.4, 5.3, 4.4, 2.8, 0.9, 6.1, 3.0, 8.6, 10.7, 4.3, 1.9, 12.0, 5.9, 4.8, 7.7))
pnorm(10, 9.3, 3.5) - pnorm(5, 9.3, 3.5)
qexp(0.15, 0.038)
qnorm(0.975, 170.035, 1.122)
pnorm(168, 170.035, 1.122)
1 - pnorm(11, 10.53, 1.3)
pnorm(146, 145, 14/49) - pnorm(142, 145, 14/49)
qnorm(0.90, 145, 14.49)
qnorm(0.95, 75/2, sqrt(75^2/12)/100)
ppois(5, 5.3)
qnorm(0.95 ,0.5, 0.25/80)
1 - pexp(2.5, 2)