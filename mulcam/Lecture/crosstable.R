getwd()
install.packages("gmodels")
library(gmodels) #범주형데이터들에 대해서 비율을 쉽게 볼 수 있는 crossTable 지원
library(ggplot2) #diamond지원

CrossTable(diamonds)
data("diamonds")
diamonds

CrossTable(x=diamonds$color,y=diamonds$cut)

#--
data <- read.csv("cleanDescriptive.csv",header = T)
head(data)
str(data)
x<-data$level2 #부모의 학력수준
y<-data$pass2 #자녀의 대학진학여부

table(x,y)

#--
study <- read.csv("")

