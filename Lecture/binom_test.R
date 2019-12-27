setwd("c:/Rwork")
data <- read.csv("./Part-III/one_sample.csv",header = TRUE)
head(data)
x<-data$survey
str(x)
summary(x) #NA값이 있는지 없는지 확인하기 위해 사용
# 만능함수(수치면 통계량, 범주면 갯수, 범주는 팩터로 바꾸기)
summary(as.factor(x)) #갯수세기
table(x) #갯수세기 only범주형만 체크, 뭐가 들어오던 범주형으로 계산
length(x)

data$survey <- as.factor(data$survey)
summary(data)

install.packages("prettyR")
library(prettyR)
freq(x)

#양측검정 H0: 만족비율이 80%이다. H1(대립가설):만족비율이 80%가 아니다
#단측검정(크다, 작다) H0: 만족비율이 80%이다. H1(대립가설):만족비율이 80%이상이다.(미만이다)
# ㄴ대립가설(alternative)을 크다, 작다 지정해주면 단측검정
binom.test(c(136,14),p=0.8) #유의수준 0.05에 양측검정 default

binom.test(c(136,14),p=0.8,alternative = "greater",conf.level = 0.95)
binom.test(c(14,136),p=0.2,alternative = "less",conf.level = 0.95)



