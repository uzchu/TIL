data(cars)
head(cars)

#회귀분석
m <- lm(dist~speed, data = cars)
m
summary(m)

fitted(m)[1:4]
residuals(m)[1:4]

predict(m,newdata = data.frame(speed=3)) #모든 모델에 쓸 수 있는 함수


install.packages("mlbench")
library(mlbench)
data("BostonHousing")
head(BostonHousing)

m2 <- lm(medv~.,data = BostonHousing) #. 여러개의변량 표시
summary(m2)

m3 <- step(m2,direction = "both")
?step






