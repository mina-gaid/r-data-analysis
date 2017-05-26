# One Way Anova

data = read.csv("PaintedTopShell.csv", header=True)
head(data)

boxplot(data) 

s_anova_dataset <- stack(data)

model <- aov(values ~ ind, data=s_anova_dataset)
summary(model)

TukeyHSD(model)
