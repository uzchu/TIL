install.packages("aod")
library(aod)
library(ggplot2)
# view the first few rows of the data
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata) # 데이터의 대략적인 분포 확인
str(mydata) # 변수별 표준편차 확인
summary(mydata) # 데이터 구조 확인
sapply(mydata, sd) # contingency table : xtabs(~ x + y, data)
xtabs(~admit+rank, data=mydata) # 종속변수(y)는 고정 ~ 분류기준(교차라서 2개 들어간 것)

mydata$rank <- factor(mydata$rank)
mylogit <- glm(admit~gre+gpa+rank,data=mydata,family = "binomial")
summary(mylogit)

exp(coef(mylogit))
