install.packages("caret")
library(caret)

#머신러닝의 전처리 (데이터 분할)
idx <- createDataPartition(iris$Species,p=0.7,list = F) #p는 학습용 데이터로 할당하고 싶은 비율
head(idx)
iris_train <- iris[idx,]
iris_test <- iris[-idx,]
table(iris_train$Species)
table(iris_test$Species)

library(nnet)
model<-multinom(Species~.,data=iris_train)
#summary(model)
result <- predict(model, iris_test)
result

#평가매트릭스
confusionMatrix(result,iris_test$Species) #예측치, 실측치
