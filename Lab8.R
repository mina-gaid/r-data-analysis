setwd('~/data')
Groups <- read.csv( "data.csv", sep=",", header=T)

#
# Display file and header names
#
Groups
names (Groups)
#
# Test for Normality
#
shapiro.test(Groups$Group.1)
shapiro.test(Groups$Group.2)
shapiro.test(Groups$Group.3)
#
# Visualise
#
boxplot(Groups)
hist(Groups$Group.1)
hist(Groups$Group.2)
hist(Groups$Group.3)
#
# run K-W test
#
Groups.kw = kruskal.test(Groups)  
Groups.kw 
