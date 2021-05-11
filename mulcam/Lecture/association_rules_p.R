install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
data("Groceries")
str(Groceries) # @ : 속성
#transactions여야만 apriori 수행 가능
inspect(Groceries) #검사하다, 감찰하다
summary(Groceries)

sort(itemFrequency(Groceries,type="absolute"),decreasing = T) #absolute:절대수치, 몇번 등장했는가
itemFrequencyPlot(Groceries,topN=10,type='absolute')
itemFrequencyPlot(Groceries,topN=10,type='relative')

#apriori(Groceries, parameter= list(support=0.1, confidence=0.8))
result_rules <- apriori(Groceries,
                        parameter = list(support=0.005,confidence=0.5,minlen=2)) #minlen : 오른쪽(rhs), 왼쪽(lhs) 갯수

result_rules
inspect(result_rules[1:10])

