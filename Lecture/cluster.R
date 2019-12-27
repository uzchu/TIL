library(ggplot2)
data("diamonds")
head(diamonds)
str(diamonds)

t <- sample(1:nrow(diamonds),1000)
test <- diamonds[t,]
dim(test)

mydia <- test[c("price","carat","depth","table")]

result <- hclust(dist(mydia),method = "ave") #ave는 평균, 거리값을 매트릭스화
plot(result,hang=-1)
