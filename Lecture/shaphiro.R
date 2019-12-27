setwd("C:/Rwork/Part-III")
data <-read.csv("one_sample.csv",header = T)
head(data)

x <-data$time
summary(x)
mean(x,na.rm = T)
x1 <- na.omit(x)
summary(x1)

#NA는 제거가 원칙
#데이터양이 너무 적어질 수 있음
#시계열데이터는 함부로 제거하면 안됨

#결측치 대체
#평균치를 넣어 대체(해석에 영향을 덜 주는 방법)
#온도같은 경우는 평균치가 아니라 앞, 뒤 데이터 추이에 따라 넣음

shapiro.test(x1)
#귀무가설 : x1이 정규성을 따른다
hist(x1)
#소수점인 자료 = 연속형 자료일 확률이 높다, 연속형자료일때 히스토그램사용
qqnorm(x1)
#정규성을 잘따르는 애들을 직선상에 오게 표현

t.test(x1,mu=5.2)
#귀무가설 : x1의 평균값은 5.2이다.
#귀무가설 기각 가능

t.test(x1,mu=5.2,alternative = "greater",conf.level = 0.95)
#귀무가설 : x1의 평균값은 5.2이다.
#대립가설 : x1의 평균값은 5.2이상이다.



