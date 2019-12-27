# KNN (K-Nearest Neighbor)

> 특정 데이터 좌표점과 다른 나머지 데이터 좌표점들간의 거리에 기반을 두어 가장 가까운 K개점들의 목적변수(혹은 반응변수)값 다수결로 분류
>
> 분류예측 기법, 게으른 학습



아래와 같은 기준 必

- 해당 데이터 점과 주변 데이터 세트간의 **유사성을 어떻게 측정**할 것인가

  - 두 점간의 유클리디안 제곱 거리의 역수
  - 피어슨 상관계수
  - 자카드 계수(점들이 이산형 변수일 경우)

- 목표변수의 범주를 분류할 때 주변 데이터 세트 **몇 개를 기준으로 판단**할 것인가

  ![image](https://user-images.githubusercontent.com/58683097/71446412-5a19a900-2766-11ea-8e71-8ba3a859fb0c.png)

- KNN 장단점

| 장점                             | 단점                                                         |
| -------------------------------- | ------------------------------------------------------------ |
| 알고리즘 이해가 쉽고 직관적      | 모형이 없으므로 변수들간의 관계 등<br />가설검증이나 구조등에 대한 분석을<br />통해 통찰력 얻기 힘듦 (주어진 데이터를<br />통해 범주의 분류결과만 판단) |
| 사전 모형설정, 모수추정 필요 X   | K에 대한 명확한 기준 X, 시행착오 必                          |
| 데이터 세트 확률분포 가정 필요 X | 많은 메모리 소요 (대용량데이터 불리)                         |
| 학습 시간이 빠름                 | 분류(예측)시간이 느림<br />(새로운 데이터 주어질 때마다 <br />모든 데이터와의 유사성 계산해야<br />하므로 시간 소요) |
