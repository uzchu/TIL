#탐색적 작업 때 주로 사용
library(party)
str(airquality)
summary(airquality)
air_ctree <- ctree(Temp~Solar.R+Wind+Ozone,airquality)
air_ctree
plot(air_ctree,mar=.1)
#*체크된건 더이상 하지 않는 부분

