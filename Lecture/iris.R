head(iris)
str(iris)
levels(iris$Species)

help(par)
par(mfrow=c(1,1),mar=c(1,1,1,1))
plot(iris[,-5])


install.packages("corrplot")
library(corrplot)

iris_cor <- cor(iris[,-5])
corrplot(iris_cor,method="circle")
corrplot(iris_cor,method="ellipse")
