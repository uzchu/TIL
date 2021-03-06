##국어, 영어,수학,과학
#16명의국어점수
x1<-c(26,46,57,36,57,26,58,37,36,56,78,95,88,90,52,56)
x2<-c(35,74,73,73,62,22,67,34,22,42,65,88,90,85,46,66)
x3<-c(35,76,38,69,25,25,87,79,36,26,22,36,58,36,25,44)
x4<-c(45,89,54,55,33,45,67,89,47,36,40,56,68,45,37,56)

score<-cbind(x1,x2,x3,x4)
colnames(score)<-c("국어","영어","수학","과학")
rownames(score)<-1:16
head(score,16)
#주성분분석(PCA)
result<-prcomp(score)
result
summary(result)
biplot(result)
screeplot(result,npcs=4,type="lines",main="Score")
