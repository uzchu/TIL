drink <- read.csv("./MLData/drink.csv", header=T)
str(drink)
library(class)
attach(drink)
m <- glm(지각여부 ~ ., family = binomial(link = logit), data = drink)
m
exp(4.913)
predict(m, drink, type = "response")
predict(m, drink, type = "response") >= 0.5

table(drink$지각여부, predict(m,drink,type="response") > 0.5)
summary(m)
