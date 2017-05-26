# Two Way Anova

setwd('~/data')
Drugs <- read.csv("drugtrial.csv", header=TRUE)

names(Drugs) 

boxplot(Drugs)

Drugs.aov <- aov(score ~ gender * factor(dose), data=Drugs) 

summary(Drugs.aov)

