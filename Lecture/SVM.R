install.packages("kernlab")
library(kernlab)

#적합도 파악
m=ksvm(Species~., data=iris)
m

head(predict(m,newdata=iris))

#커널은 특별한 변환없이 내적을 계산하라는 뜻
ksvm(Species~.,data=iris,kernel="vanilladot")

#plodot은 다항커널을 사용하는 것, degree=3 3차원을 뜻함
m=ksvm(Species~.,data=iris,kernel="polydot",kpar=list(degree=3))

install.packages("e1071") #tune() 함수를 담고 있음
library(e1071)
#그리드탐색을 사용한 파라미터 튜닝을 실행한다.
#그리드 탐색: 인자로 주어진 모든 가능한 경우에 대해 테스트해보는 방식
tune.svm(Species~.,data=iris,gamma=2^(-1:1),cost=2^(2:4))


