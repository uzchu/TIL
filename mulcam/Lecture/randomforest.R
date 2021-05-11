install.packages("randomForest")
library(randomForest)
rf <- randomForest(Species ~., data = iris)
rf
plot(rf)
