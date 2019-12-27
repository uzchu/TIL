boy_7 <- c(1196,1340,1232,1184,1295,
           1247,1201,1182,1192,1287,
           1159,1160,1243,1264,1276)
t.test(boy_7,mu=1220)

#One Sample t-test

#data:  boy_7
#t = 0.75288, df = 14(자유도 (전체n개-1)), p-value = 0.464
#alternative hypothesis: true mean is not equal to 1220
#95 percent confidence interval:
#  1200.526 1260.541
#표본평균을 토대로 t분포를 추정하면 모집단의 구간추정 >> 신뢰구간 (5%오류 포함)

#sample estimates:
#  mean of x (표본평균)
#1230.533

#p-value: 표본통계량을 가지고 귀무가설을 기각했을때 발생할 오류의 확률
#임계값이 유의수준