# T-test.
setwd('~/data')
data = read.csv("data1.csv")
head(data)
t.test(data$Group.1, data$Group.2, alternative = "two.sided", paired = FALSE)
boxplot(data)

# One Way ANOVA.

data = read.csv("grades.csv")
head(data)
boxplot(data) 
s_anova_dataset <- stack(data)
model <- aov(values ~ ind, data=s_anova_dataset)
summary(model)
