# Decision Tree (의사결정트리)

> 기계학습 중 하나로 특정 항목에 대한 의사 결정 규칙(Decision rule)을 나
> 무 형태로 분류해 나가는 분석 기법



#### 1. 목적

- 세분화(Segmentation) : 데이터를 비슷한 특성을 갖는 몇 개의 그룹으로 분할해 그룹별 특성을 발견하는 경우 또는 각 고객이 어떤 집단에 속하는지를 파악하고자 하는 경우

  ex) 시장세분화, 고객세분화

- 분류(Classification) : 관측개체를 여러 예측변수들에 근거해 목표변수의 범주를 몇 개의 등급으로 분류하고자 하는 경우

  ex) 고객을 신용도에 따라 우량/불량으로 분류

- 예측(Prediction) : 자료에서 규칙을 찾아내고 이를 이용해 미래의 사건을 예측하고자 하는 경우

  ex) 고객속성에 따라서 대출한도액을 예측

- 차원축소 및 변수선택(Data reduction and variable screening) : 매우 많은 수의 예측변수 중에서 **목표변수에 큰 영향을 미치는 변수들을 골라내고자 하는 경우**

- 교효작용효과의 파악(Interaction effect identification) : 여러 개의 예측변수들을 결합해 목표변수에 작용하는 규칙(교호작용효과)을 파악하고자 하는 경우

- 범주의 병합 또는 연속형 변수의 이산화(Binning) : 범주형 목표변수의 범주를 소수의 몇개로 병합하거나 연속형 목표변수를 몇 개의 등급으로 이산화 하고자 하는 경우



#### 2. 불순도

- 의사결정트리 학습에서 각 노드를 분기하기 위한 최적의 질문은 정보이득 값이 최대가 되도록 만들어주는 것이 핵심

- 정보이득값이 최대일 때

  : 부모노드의 불순도 - 자식노드의 불순도 합이 최대가 될 때

  - 불순도가 0 일 때 = 한가지만 있을 때 
  - 불순도가 최대일 때 = 반반 씩 섞였을 때

- 불순도가 낮아지는 방향으로 의사결정트리는 진행됨
