setwd('~/data')
data = read.csv("most_backed.csv")

mean(data$num.backers)
median(data$num.backers)

mean(data$amt.pledged)
median(data$amt.pledged)

my.summary <- summary(data$location)
df <- data.frame(name=names(my.summary), number=my.summary)
df[1:10,]

top_10 = data[1:10,]
head(top_10)

boxplot(top_10$amt.pledged, 
        ylab='Amount Pledged',
        main='Boxplot Distribution of Kickstarters Projects pledged to.'
)

plot(top_10$X, top_10$amt.pledged, ylab='Amount pledged', xlab='ID', main='Scatterplot')

