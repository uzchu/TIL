# Tensorflow

> 텐서를 포함한 계산을 정의하고 실행하는 프레임워크
>
> Tensor + flow ; Tensor(데이터)를 흘려보내는 학습방법



- Tensor
  - 상수
  - 변수
  - placeholder
    - 값을 나중에 정의하는 자료형 ; 학습을 위한 학습용 데이터를 담는 그릇개념 ; feeddata
    - features와 label인 y를 행으로 줌



- Tensorflow 1.x vs 2.x

  | ver 1.x                                              | ver 2.x                                     |
  | ---------------------------------------------------- | ------------------------------------------- |
  | 그래프 생성 후 실행을 위해 세션을 따로 작성해줘야 함 | 그래프 생성 후 세션을 따로 작성할 필요 없음 |

  

- Tensorflow (ver.1.x) code

  ```python
  import tensorflow as tf
  # 그래프 노드를 정의하고 출력합니다.
  # 출력값 : Tensor("Const:0", shape=(), dtype=float32) Tensor("Const_1:0", shape=(), dtype=float32)
  node1 = tf.constant(3.0, dtype=tf.float32)
  node2 = tf.constant(4.0) # 암시적으로 tf.float32 타입으로 선언될 것입니다.
  print(node1, node2)
  # 세션을 열고 그래프를 실행합니다.
  # 출력값 : [3.0, 4.0]
  sess = tf.Session()
  print(sess.run([node1, node2]))
  # 두개의 노드의 값을 더하는 연산을 수행하는 node3을 정의합니다.
  # 출력값:
  # node3: Tensor("Add:0", shape=(), dtype=float32)
  # sess.run(node3): 7.0
  node3 = tf.add(node1, node2)
  print("node3:", node3)
  print("sess.run(node3):", sess.run(node3))
  sess.close()
  ```

  

  

- Tensorflow (ver.2.x)

  ```python
  import tensorflow as tf
  # 그래프 노드를 정의하고 출력합니다.
  # 출력값 : <tf.Tensor: id=0, shape=(), dtype=float32, numpy=3.0>, <tf.Tensor: id=1, shape=(), dtype=float32, numpy=4.0>
  node1 = tf.constant(3.0, dtype=tf.float32)
  node2 = tf.constant(4.0) # 암시적으로 tf.float32 타입으로 선언될 것입니다.
  print(node1, node2)
  # 그래프를 실행합니다.
  # 출력값 : [3.0, 4.0]
  print(node1.numpy(), node2.numpy())
  # 두개의 노드의 값을 더하는 연산을 수행하는 node3을 정의합니다.
  # 출력값:
  # node3: <tf.Tensor: id=2, shape=(), dtype=float32, numpy=7.0>
  # node3.numpy(): 7.0
  node3 = tf.add(node1, node2)
  print("node3:", node3)
  print("node3.numpy():", node3.numpy())
  ```











---

- GPU
  - 그래픽을 위한 전담 cpu
  - 좋은 그래픽카드가 출력이 없어 놀고 있을테니 그걸 가져다가  쓸 수 있게 tensorflow가 만든것..
  - tensorflow -GPU 해주면 사용가능
    - 단, gpu 사양 정보가 필요함(인터넷치면 나옴)

