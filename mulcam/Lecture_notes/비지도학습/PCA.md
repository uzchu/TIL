# PCA (주성분 분석)

> 분포된 데이터들의 주성분(특성)을 찾아주는 방법 
>
>=> 분산값이 최대가 되는 벡터를 찾는 것
>
>**차원축소(dimensionality reduction)**와 **변수추출(feature extraction)** 기법으로 널리 쓰임
>
>=> 전처리 후 탐색적 분석 시 사용함



____


$$
PCA_1 = w_1x_{1}+w_2x_{2}+w_3x_{3}+ ···+w_nx_{n}
$$
​										=> **분산값이 최대**가 되는 **w값을 찾는 것**이 주성분 분석의 핵심



____



![image](https://user-images.githubusercontent.com/58683097/71718469-a481e080-2e5e-11ea-9cc9-6f40f0c99d6d.png)

​														t의 분산값이 최대가 되는 w값이 주성분



#### PCA 선을 여러개 찾아야 하는 이유

![image](https://user-images.githubusercontent.com/58683097/71720195-33ddc280-2e64-11ea-80c9-1be0b827171c.png)

: 주성분 선 상에서 수직으로 있는 데이터들은 특성 구분이 되지 않기 때문에 다른 PCA선이 필요함



#### 다른 PCA선을 찾는 방법

![image](https://user-images.githubusercontent.com/58683097/71720158-0abd3200-2e64-11ea-8646-ec7e2e10768f.png)

: 처음 찾은 PCA와 수직이 되는 또다른 PCA 중 분산값이 가장 큰 것

=> 전체데이터의 80% 설명가능 할 때까지 반복수행

(차원을 축소하는 과정에서 약 20% 누락되기 때문에 오버피팅이 방지됨)



#### PCA 갯수 결정방법

```R
result <- prcomp(데이터셋) #PCA분석
summary(result)

#결과
Standard deviation (분산의 퍼짐정도)
Cumulative Preportion (누적 기여율 : 전체데이터의 몇 퍼센트 설명하는지,80% 일반적) # 이거보고 판단
```





