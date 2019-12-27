movie <- read.csv("MLData/movie.csv",header = T)
library(e1071)

nm <- naiveBayes(movie[1:5],movie$장르,laplace=0)
head(movie)

result <- predict(nm, movie[1:5])
sum(movie$장르 != result)
result
