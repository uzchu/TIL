install.packages("class")
library(caret)
library(class)
idx <- createDataPartition(iris$Species,p=0.7,list=F)
iris_train<- iris[idx,]
iris_test<- iris[-idx,]
set.seed(1234)
model <- knn(train = iris_train[,-5],
             test = iris_test[,-5],
             cl = iris_train$Species,
             k=3) #k는 1부터 다 집어 넣음

summary(model)
confusionMatrix(model,iris_test$Species)
