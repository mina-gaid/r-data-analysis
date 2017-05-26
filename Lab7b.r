# Normality Testing

setwd('~/data')
data <- read.csv( "data.csv", sep=",", header=T)
names(data)

o = data$Oceanic
c = data$Continental

# Create a QQ plot to visualise the dataset.
qqnorm(o)
qqline(o)

qqnorm(c)
qqline(c)

# Create a histogram to visualise the data and check for skewness.
hist(c)
hist(o)

shapiro.test(o)
shapiro.test(c)

wilcox.test(o, c)
wilcox.test(c, o)
