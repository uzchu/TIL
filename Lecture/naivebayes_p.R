library(caret)
library(e1071)
#데이터셋 준비
idx <- createDataPartition(iris$Species,p=0.7,list=F)
iris_train <- iris[idx,]
iris_test <- iris[idx,]

table(iris_train$Species)
table(iris_test$Species)

#나이브베이즈 기법 적용하기
#나이브베이즈 적합
naive.result <- naiveBayes(iris_train,iris_train$Species,laplace = 1)
#테스트 데이터 평가
naive.pred <- predict(naive.result,iris_test,type = "class")
#분류결과 도출
table(naive.pred,iris_test$Species)

confusionMatrix(naive.pred,iris_test$Species)
