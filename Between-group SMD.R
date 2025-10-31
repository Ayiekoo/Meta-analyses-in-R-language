# Between-Group SMD

# Load esc package
library(esc)

# Define the data we need to calculate the SMD/d
grp1m <- 50 # Mean of group 1
grp2m <- 60 # Mean of group 2
grp1sd <- 10 # sd of group 2
grp2sd <- 10 # sd of group 2
grp1n <- 100 # n of group 1
grp2n <- 100 # n of group 2

# Caluclating the effect size
esc_mean_sd(grp1m = grp1m, grp2m = grp2m,
            grp1sd = grp1sd, grp2sd = grp2sd,
            grp1n = grp1n, grp2n = grp2n)

