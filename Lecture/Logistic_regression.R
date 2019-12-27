#로지스틱 회귀분석은 기본적으로 범주형 두가지
data(iris)
d <- subset(iris, Species== 'virginica' | Species == 'versicolor')
str(d)
?glm
# 종속변수 ↓(명목형), factor형인지 꼭 확인하기
m <-glm(Species~., data = d, family = 'binomial') #binomial : 이항분류
summary(m)
fitted(m)[c(1:5,51:55)]
as.numeric(d$Species)

fm<-ifelse(f>.5,1,0)
head(fm)
#vericolor = 0, virginica=1
is_correct <- ifelse(f>.5,1,0)== (as.numeric(d$Species)-2)
head(is_correct)
sum(is_correct)
