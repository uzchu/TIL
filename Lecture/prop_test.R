setwd("c:/Rwork/Part-III")
data2 <- read.csv("two_sample.csv", header=TRUE)
head(data2) # 변수명 확인

x <- data2$method
y <- data2$survey

table(x)
table(y)
table(x,y,useNA = 'ifany') #2차원 매트릭스로 보여줌, 결측치도 보여줘라(ifany)

prop.test(c(110,135),c(150,150)) #,alternative='two.side' 기본값
#prop.test(c(A만족,B만족),c(전체 수,전체수)) 같은 기준(만족) 중심으로 비율 파악
#귀무가설: 두 집단의 비율차이가 없다

prop.test(c(110,135),c(150,150), alternative = 'less')
#3개(two.side,greater,less)를 다 보고 해석하기

result <- subset(data2, !is.na(score), c(method, score))
head(result)
#subset: 행을 가져옴. subset(데이터셋, 행 조건, 열 조건)
#SQL구문 select랑 유사함.

length(result$score)
a <- subset(result, method==1)
b <- subset(result, method==2)

length(a$score)
length(b$score)
a1 <- a$score
b1 <- b$score

mean(a1)
mean(b1)

var.test(a1,b1)
#귀무가설: 두 집단의 분포 차이가 없다

t.test(a1,b1, var.equal = T)
#two sample t-test 들어감
#두 집단이 동일할 때 사용함

t.test(a1,b1)
#welch two sample t-test 들어감
#두 집단이 동질하지 않을때 사용함
#동질할 때 사용해도 됨
#디폴트값이 분산의 비동질성이 기준

data3 <- read.csv("paired_sample.csv", header=TRUE)
head(data3)
summary(data3)

result <- subset(data3,!is.na(after), c(before,after))
head(result)

x <- result$before
y <- result$after

mean(x)
mean(y)

var.test(x,y,paired=T)

t.test(x,y,paired = T)



