set1 <- read.csv("MLData/set1.csv",header = T,stringsAsFactors = F)

plot(set1)

library(MASS)
density <- kde2d(set1$food,set1$book,n=400)
image(density,xlab="food",ylab="book")

library(e1071)
m1 <- svm(status~food+book+cul+cloth+travel,type="C-classification",data=set1)
m1
#tune.svm(m1,)

predict(m1,set1)
sum(set1$status != predict(m1,set1))

#library(caret)
#confusionMatrix()

library(kernlab)
m2 <- ksvm(status ~., kernel="rbfdot",data=set1)
predict(m2,set1)
sum(as.numeric(predict(m2,set1)>0.5)!=set1$status)
