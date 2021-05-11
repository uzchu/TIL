result2<- kmeans(mydia,3)
names(result2)
result2

#군집별 통계
g1 <- subset(mydia,result2$cluster==1)
summary(g1)
g2 <- subset(mydia,result2$cluster==2)
g3 <- subset(mydia,result2$cluster==3)
summary(g2)
summary(g3)
str(mydia)

#비계층적 모델
mydia$cluster <- result2$cluster
head(mydia)
cor(mydia[,-5],method = "pearson")
plot(mydia[,-5])
plot(mydia$carat,mydia$price,col=mydia$cluster)

km.out.withness<-c()
km.out.between<-c()
for (i in 2:7){ #군집수를k=2~7까지변화시켜가며클러스터링시행
  set.seed(1)
  km.out<-kmeans(mydia, centers=i)
  km.out.withness[i-1]<-km.out$tot.withinss#군집내제곱합의합
  km.out.between[i-1]<-km.out$betweenss#군집간제곱합의합
}
data.frame(km.out.withness, km.out.between)
#---------------------------------------------------------------------------------
iris2<-iris[,1:4] #목표변수(Species) 제외
km.out.withness<-c()
km.out.between<-c()
for (i in 2:7){ #군집수를k=2~7까지변화시켜가며클러스터링시행
  set.seed(1)
  km.out<-kmeans(iris2, centers=i)
  km.out.withness[i-1]<-km.out$tot.withinss#군집내제곱합의합
  km.out.between[i-1]<-km.out$betweenss#군집간제곱합의합
  }
data.frame(km.out.withness, km.out.between)
