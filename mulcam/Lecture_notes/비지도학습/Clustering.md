# Clustering (군집화)

> 데이터들에 존재하는 유사성 혹은 비유사성에 근거해 패턴화하여, 유사한 사람들을 그룹화 및 세분화



#### 계층적 클러스터

![image](https://user-images.githubusercontent.com/58683097/71721727-7fdf3600-2e69-11ea-819f-2dcc9fa4ba70.png)

: 처음엔 자기 자신과 가장 가까운 데이터와 둘이 짝을 이루고, 둘의 평균을 구한 뒤 가까운 것과 계속해서 묶어나가는 방식



#### 비계층적클러스터
: K-means, DBSCAN, SOM 이 3개가 가장 많이 쓰임

- K-means : K-평균클러스터링은 주어진 군집수 k에 대하여 군집 내 거리제곱합의 합을 최소화 하는것을 목적으로함
  - 수학적 근거자료 X, 무조건 돌려보는 수 밖에 없기때문에 계층적 클러스터로 대략 알아본 뒤 적정 군집 수 K결정
  - 현장에서는 정답이 있을 때 활용한다고 함
  - 단점
    - K군집수를 사전에 알 수 없기에 시행착오 과정을 거쳐야 함
    - 초기 중심점에 따라 국소최적값을 찾게 되고, 계산된 결과는 전역 최적값을 보장하지 못함
    - 평균을 이용하기 때문에 이상치의 영향을 많이 받음 (이상치 처리 必 => 로그 취하기, 제거 등)



