# Between-Group SMD

# Load esc package
library(esc)

# Define the data we need to calculate the SMD/d
x1 <- 20 # Mean and week1
x2 <-30 # Mean and week2
sd1 <- 12 # SD at week 1
sd2 <- 16 # SD at week 2
n <- 80 # Sample size
r <- 0.5 # Correlation between week 1 and week 2

# Calculate the raw mean difference
md_within <- x2 - x1

# Calculate SMD
smd_within <- md_within/(
  (sqrt(
    (sd1^2+sd2^2)/2
  ))/(sqrt(2*(1-r)))
)
smd_within

# Calculate the standard error
se_within <- sqrt(
  (
    (2*(1-r)/n)+
      (smd_within^2/(2*n))
  )
)
se_within
