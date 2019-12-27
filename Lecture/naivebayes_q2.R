library(e1071)
mail <- read.csv("MLData/spam.csv", header = T)
mail[is.na(mail)] <- 0
nm2 <- naiveBayes(mail[2:13],mail$메일종류,laplace = 0)
head(mail)

result2 <- predict(nm2,mail[2:13])
sum(mail$메일종류 != result2)
result2
nm2
