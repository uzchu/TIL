library(caret)
idx <- createDataPartition(iris$Species,p=0.7,list=F)
iris_train<- iris[idx,]
iris_test<- iris[-idx,]

library(rpart)
model <- rpart(Species~.,data = iris_train)
result<- predict(model, iris_test, type = "class")
head(result)
confusionMatrix(result,iris_test$Species)
#accuracy(정확도), kappa(정확하게 맞출 확률(높을수록좋음,1에가까울수록))

#앙상블기법
library(rpart)
library(e1071) #나이브베이지
library(randomForest)
library(caret)

idx <- createDataPartition(iris$Species,p=0.7,list=F)
iris_train[idx,]
iris_test[-idx,]
rdf <- randomForest(Species~.,data = iris_train,importance=T)
rdf.pred <- predict(rdf,newdata = iris_test,type="response")
rdf.pred
confusionMatrix(rdf.pred, iris_test$Species, positive = "versicolor")
