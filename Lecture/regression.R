getwd()
m <- lm(dist~speed, data = cars) #종속변수~독립변수
summary(m)

par(mfrow=c(2,2),mar=c(3,3,3,3)) #mar는 여백주는 것
plot(m)

install.packages("lmtest")
library(lmtest)
#더빈왓슨 d=2(p=0:상관관계 없음), 보통 d=1~3 정상
dwtest(m)
