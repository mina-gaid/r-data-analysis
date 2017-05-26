# Install and load the required packages.

install.packages('e1071')
library(e1071)  

# Set the working directory and load the dataset.
setwd('~/data')
data = read.csv("Week-2-Data.csv")
head(data)

# Calculate the mean
mean(data$Rainfall)

# Calculate the median
median(data$Rainfall)

# Calculate the max
max(data$Rainfall)

# Calculate the min
min(data$Rainfall)

# Calculate the range
range(data$Rainfall)

# Calculate the difference
diff(data$Rainfall)

# Calculate the variance
var(data$Rainfall)

# Calculate the standard deviation
sd(data$Rainfall)

# Calculate the kurtosis
kurtosis(data$Rainfall)

# Calculate the skewness
skewness(data$Rainfall)

# Run a summary of the data
summary(data$Rainfall)

# Create a Histogram
hist(data$Rainfall,  main="Histogram of Rainfall", xlab="Rainfall")


