# reshape

numpy 메소드

> 배열의 차원 재구조화 하고자 할 때 사용



```python
import numpy as np

x = np.arange(8).reshape(2,4)

x.shape
(2,4)

x
array([[0, 1, 2, 3],
       [4, 5, 6, 7]])
```

- reshape(a,b) => a나 b자리에 -1이 들어가있으면 나머지 하나에 맞춰서 자동설정

```python
x.reshape(4,-1)

array([[0, 1],
       [2, 3],
       [4, 5],
       [6, 7]])
```

- reshape(-1)

```python
x.reshape(-1) # 1차원으로 바꿔줌

array([0, 1, 2, 3, 4, 5, 6, 7])
```

- 참고자료
  - https://rfriend.tistory.com/345
  - sam's code
