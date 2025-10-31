# Means
set.seed(123)
sample <- rnorm(n = 50, mean = 20, sd = 5)

mean(sample)

# lets calculate the standard error
sd(sample)/sqrt(50)

# Pearson Product-Moment Correlation
## Simulate two continuous variables
set.seed(12345)
x <- rnorm(20, 50, 10)
y <- rnorm(20, 10, 3)

# Calculate the correlation between x and y
r <- cor(x,y)
r

# Let's calculate Fisher's z
z <- 0.5*log((1+r)/(1-r))
z

# Effect sizes in control group designs
#### generate two random variables with different population means
set.seed(123)
x1 <- rnorm(n = 20, mean = 10, sd = 3)
x2 <- rnorm(n = 20, mean = 15, sd = 3)

# Calculate values we need for the formulas
S1 <- sd(x1)
S2 <- sd(x2)
n1 <- 20
n2 <- 20

# calculate the mean difference
MD <- mean(x1) - mean(x2)
MD

# Calculate s_pooled
s_pooled <- sqrt(
  (((n1-1)*s1^2) + ((n2-1)*s2^2))/
    ((n1-1) + (n2-2))
)

## calculate the standard error
se <- s_pooled*sqrt((1/n1) + (1/n2))
se

