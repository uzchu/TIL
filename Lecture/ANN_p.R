library(caret)
idx <- createDataPartition(iris$Species,p=0.7,list=F)
iris_train <- iris[idx,]
iris_test <- iris[-idx,]
table(iris_train$Species)

#인공신경망 기법을 사용하기 위한 nnet 패키지 로딩
library(nnet)
#데이터표준화
iris_train_scale <- as.data.frame(sapply(iris_train[,-5],scale))
iris_test_scale <- as.data.frame(sapply(iris_test[,-5],scale))
iris_train_scale$Species <- iris_train$Species
iris_test_scale$Species <- iris_test$Species
#훈련데이터 통한 모형 적합
nnet.result <- nnet(Species~., iris_train_scale,size = 3) #size는 노드수
#test데이터 평가
nnet.pred <- predict(nnet.result,iris_test_scale,type = "class")
#분류 결과도출
table(nnet.pred,iris_test$Species)
