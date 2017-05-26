# Multiple Linear Regression

# Set our working directory and load the dataset.
setwd('~/data')
data = read.csv("data.csv")

head(data)

# Run correlation (same results as in SPSS and Excel)
cor(data) 
# Compare graphically
pairs(data)
# Now run the model

names(data)

Model <- lm(data$Score ~ data$Hours + data$Anxiety + data$a_points)
Model
summary(Model)

plot(Model) 

y = -11.8225
h = 0.5511
anxiety = 0.1035
ap = 1.9889

result = y + (h * 50) + (anxiety * 35) + (ap * 21)

result
