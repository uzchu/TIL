academy <- read.csv("MLData/academy.csv",stringsAsFactors = F,header = T)
academy <- academy[-1]
head(academy)
dist_academy <- dist(academy,method = "euclidean")
dist_academy
two_coord <- cmdscale(dist_academy)
plot(two_coord,type = 'n')
text(two_coord,as.character(1:52))

food <- read.csv("MLData/food.csv",stringsAsFactors = F,header = T)
food <- food[-1]
food.mult <- t(as.matrix(food)) %*% as.matrix(food)
food.mult
dist_food <- dist(food.mult,method = "euclidean")
dist_food
two_coord2 <- cmdscale(dist_food)
plot(two_coord2,type = 'n')
text(two_coord2,rownames(food.mult))
