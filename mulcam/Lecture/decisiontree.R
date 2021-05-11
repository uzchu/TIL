install.packages("rpart")
library(rpart)

#CART : 목적변수가 
m <- rpart(Species~.,data = iris)
m
plot(m,margin = .1)
text(m,cex=1.2)

install.packages("rpart.plot")
library(rpart.plot)
prp(m,type = 4,extra = 2,digits = 3)

install.packages("party") #CART에 P-value를 추가한 버전이라 생각..
library(party)

m2<-ctree(Species~.,data=iris)
plot(m2,margin = .1)

