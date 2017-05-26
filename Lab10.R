setwd('~/data')
data <- read.csv('Poverty USA.csv')

confidence <- function (confidence, mean, sd, sample_size) {
  standard_error <- mean / sqrt(sample_size);
  Z <- (confidence / 2) * standard_error;
  lower_bound <- mean - Z;
  upper_bound <- mean + Z;
  return(paste('Lower_bound: ', lower_bound, 'Upper Bound: ', upper_bound, sep=" "))
}

m <- mean(data$Poverty1998)
s <- sd(data$Poverty1998)

m2 <- mean(data$Poverty1990)
s2 <- sd(data$Poverty1990)

first_sample <- confidence(0.95, m, s, 51);
first_sample

second_sample <- confidence(0.95, m2, s2, 51);
second_sample

pooled <- (s + s2) / 2;                   

# Calculate the effect size using Cohen's D.

d <- (m - m2) / pooled
d
