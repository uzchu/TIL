# Gradient Boosting

**그래디언트 부스팅 회귀 트리** 또한 여러 개의 결정 트리를 묶어 강력한 모델을 만드는 앙상블러닝 방식입니다. 회귀와 분류 모두에 사용가능 하며, 랜덤 포레스트와의 차이라면 이전 결정 트리의 오차를 보완하여 순차적인 트리를 만든다는 것입니다.

순차적인 트리의 의미는 **그림1**과 **그림2**를 보시면 어느정도 이해가 되실 겁니다. 이러한 특징으로 인해 그래디언트 부스팅 회귀 트리는 **무작위성을 가지지 않습니다**. 또한, 사전 가지치기를 통해, 1~5개의 깊이를 갖는 얕은 결정 트리를 사용하기 때문에 **메모리를 적게 사용**하고 **예측도 빠릅**니다.

[![img](https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdimensionless.in%2Fwp-content%2Fuploads%2F2016%2F12%2Fslide_24-960x675.jpg%22&type=cafe_wa740)](https://blog.naver.com/PostView.nhn?blogId=p2881p&logNo=221541895791&from=search&redirect=Log&widgetTypeCall=true&topReferer=https%3A%2F%2Fsearch.naver.com%2Fsearch.naver%3Fquery%3D%EA%B7%B8%EB%9E%98%EB%94%94%EC%96%B8%ED%8A%B8%20%EB%B6%80%EC%8A%A4%ED%8C%85%26where%3Dpost%26sm%3Dtab_nmr%26nso%3D&directAccess=false#)

그림1. 그래디언트 부스팅 회귀 트리

[![img](https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fpostfiles.pstatic.net%2FMjAxOTA1MjBfMjIy%2FMDAxNTU4MzE5NDcwMzgw.0QSENpWJysEtEXTwx5KpKdu2uhZ-eRJsikCoIeWlNuMg.3cZP0eTA3mIN1n34qbNWN3CXEUAzBqs69dnYHQZGDREg.PNG.p2881p%2F%25EA%25B7%25B8%25EB%25A6%25BC2._%25EC%2584%25A4%25EB%25AA%2585.png%3Ftype%3Dw580%22&type=cafe_wa740)](https://blog.naver.com/PostView.nhn?blogId=p2881p&logNo=221541895791&from=search&redirect=Log&widgetTypeCall=true&topReferer=https%3A%2F%2Fsearch.naver.com%2Fsearch.naver%3Fquery%3D%EA%B7%B8%EB%9E%98%EB%94%94%EC%96%B8%ED%8A%B8%20%EB%B6%80%EC%8A%A4%ED%8C%85%26where%3Dpost%26sm%3Dtab_nmr%26nso%3D&directAccess=false#)

그림2. 순차적인 트리에 대한 설명







[존재하지 않는 이미지입니다.](https://blog.naver.com/PostView.nhn?blogId=p2881p&logNo=221541895791&from=search&redirect=Log&widgetTypeCall=true&topReferer=https%3A%2F%2Fsearch.naver.com%2Fsearch.naver%3Fquery%3D%EA%B7%B8%EB%9E%98%EB%94%94%EC%96%B8%ED%8A%B8%20%EB%B6%80%EC%8A%A4%ED%8C%85%26where%3Dpost%26sm%3Dtab_nmr%26nso%3D&directAccess=false#)

그림3. 그래디언트 부스팅 회귀 트리 결과

그래디언트 부스팅 회귀 트리는 이전 트리의 오차를 보완하는 방식으로 순차적 트리를 만든다고 말씀드렸는데요. 이전 트리에서 발생하는 오차를 얼마나 보정할 것인지를 제어하는 것이 바로 **학습률 (Learning rate)** 입니다. 학습률을 **크게 설정**하면 이전 트리에 대한 오차 보완을 강하게 하므로 복잡한 모델을 만듭니다. 마찬가지로 **결정 트리 개수를 키워도** 모델의 복잡도는 커지게 됩니다. 복잡도가 커진다는 것은 훈련 데이터에 대해서는 학습이 잘 된다는 것을 의미하죠.

그래디언트 부스팅 회귀 트리는 사전가지치기를 통해 일부 특성을 활용하는만큼, 일부 특성에 대해서는 완전히 무시하는 경우도 보입니다. 그래디언트 부슽팅 회귀 트리는 지도 학습에서 가장 강력하고 널리 사용하는 모델 중 하나지만, 매개변수를 잘 조정해야 한다는 점 (학습률)과 훈련 시간이 길다는 점이 단점으로 꼽힙니다. 또한 데이터 포인트가 적고 특성이 많을 경우에는 잘 작동하지 않습니다 (랜덤 포레스트도 마찬가지).







**참고자료**

\1. 안드레아스 뮐러, 세라 가이도. (2019) 파이썬 라이브러리를 활용한 머신러닝 번역개정판.

\2. https://dimensionless.in/gradient-boosting/

[![img](https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdimensionless.in%2Fwp-content%2Fuploads%2F2016%2F12%2Fslide_24.jpg%22&type=ff500_300)](https://dimensionless.in/gradient-boosting/)

[**Gradient Boosting: Visual Conceptualization | Dimensionless Technogolies**](https://dimensionless.in/gradient-boosting/)

[Gradient Boosting Model is a machine learning technique, in league of models like Random forest, Neural Networks etc.It can be used over regression when](https://dimensionless.in/gradient-boosting/)

[dimensionless.in](https://dimensionless.in/gradient-boosting/)



**[출처]** [앙상블러닝 - 그래디언트 부스팅 회귀 트리 (Gradient boosting regression tree)](https://blog.naver.com/p2881p/221541895791)|**작성자** [고고씽](https://blog.naver.com/p2881p)





---

그래디언트부스트 시뮬레이션

http://arogozhnikov.github.io/2016/06/24/gradient_boosting_explained.html

알고리즘을 쉽게 설명한 사이트

2) https://wikidocs.net/19037

1) https://blog.naver.com/gam_bit91/221739081479

워싱턴대학수업자료

https://homes.cs.washington.edu/~tqchen/data/pdf/BoostedTree.pdf

AdaBoost

https://ericalee97.blog.me/221665865950

 경사하강법

https://blog.naver.com/ollehw/221517423957