# Normality Testing

library(e1071)  

setwd('~/data')
data = read.csv("data.csv")

head(data)
names(data)

waiting_time <- data$Waiting.Time
sent_home <- data$Time.until.sent.home
broken_bone <- data$Broken.Bone.Wait.Time
transfer_time <- data$Transfer.Time
summary(data)

kurtosis(waiting_time)
kurtosis(sent_home)
kurtosis(broken_bone)
kurtosis(transfer_time)

skewness(waiting_time)
skewnewss(sent_home)
skewnewss(broken_bone)
skewnewss(transfer_time)

summary(waiting_time)
summary(sent_home)
summary(broken_bone)
summary(tranfer_time)

hist(waiting_time, main='Waiting Time Histogram.')
hist(sent_home, main='Time until sent home Histogram.')
hist(broken_bone, main='Broken Bone Wait Time Histogram.')
hist(transfer_time, main='Transfer Time Histogram.')

qqnorm(waiting_time, main='Waiting Time QQ Plot')
qqline(waiting_time)

qqnorm(sent_home, main='Sent Home QQ Plot')
qqline(sent_home)

qqnorm(broken_bone, main='Broken Bone QQ Plot')
qqline(broken_bone)

qqnorm(transfer_time, main='Transfer Time QQ Plot')
qqline(transfer_time)

shapiro.test(waiting_time)
shapiro.test(sent_home)
shapiro.test(broken_bone)
shapiro.test(transfer_time)


