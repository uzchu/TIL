# spark

> 하둡 내 맵리듀스 부분 보완용 (하둡보다 약 100배 빠르다고 함)
>
> 스파크는 저장기술을 제공하지 않음. 하둡 저장기술(HDFS)과 함께 쓰임



- 스파크를 사용할 때 python 사용가능하지만, scalar라는 언어를 사용하면 훨씬 빠르다고 함. 따라서 회사에서 spark를 쓴다고 하면 scalar를 배우는게 좋음

- spark 2.4.4 다운

- 파이썬 기반으로 spark를 사용할 건데 파이썬 콘솔창에서 치기 불편하니까 주피터 노트북에서 코드치고 스파크를 밑단에서 사용하는 방식으로 쓸 것
  - 주피터에서 spark 불러오기 위해 pyspark도 설치 필요

- aws 서버켜고, putty로 접속해서 창 켜고 spark구동시키기

  - 멀티캠퍼스\_서비스 산업 데이터를 활용한 머신러닝 분석 과정_실습장비 매뉴얼(A).pdf 참조

- 리눅스 언어

  - man ls : 매뉴얼 ls
  - pwd : 현재 디렉토리
  - clear : 깨끗하게 하는 것
  - cd : change directory
  - ls -al : ls에 옵션 al 적용, 파일 자세히 정보 알려주는 것
    - drwxr-xr-x
    - 맨 첫번째 글자가 d로 되어있는건 디렉토리, l은 링크파일, -는 일반파일
    - 첫번째 부분은 소유자, 두번째 부분은 같은 그룹, 세번째 부분은 공개
    - rwx : **r**ead(읽기) **w**rite(쓰기) e**x**ecute(실행)

- 스파크 언어(scala)

  - **var** a:Int =1 >> a=3하면 값 변경 가능 (O)

  - **val** b=3 >> b=3하면 값 변경 불가(X)

  - 함수 생성

    - def display(x:string)={

      println(x)

      }

  - println(): print하는 내장형 함수..

  - 클래스 생성

    - class Test{

      var a=1

      def set(n:Int)={

      ​	a=n

      }

      def print() = {println(a)}

      }

  - 배열 생성

    - val a = new Array\[String](2)

      : new는 초기값 없을 때

    - val a2 = Array("Hello","It's me")

      :초기값이 있을 땐 그냥 적어도 됨

    - val x = List.range(1,10)

      :range 사용 가능.. 1부터 10까지 리스트로 만들어줌

    - Array랑 List의 차이

      :Array는 값 변경 가능!

       List는 값 변경 불가능! (python의 튜플과 비슷)



서버에서 jupyter notebook 실행을 위한 환경설정

- ~$ 되어있는 상태에서 conda activate 하면 콘다 베이스환경으로 넘어옴
  - (base) lab13@ip-172~~~~~~~
- (base) lab13@ 어쩌구 : ~$ conda create -n 가상환경명 python=3.6  jupyter tenserflow
- (base) lab13@ 어쩌구 : ~$ conda activate 가상환경명
- (가상환경명) lab13@어쩌구 : ~$jupyter-notebook --ip=0.0.0.0 --no-browser --port=내포트번호
  - url복사해서 크롬에서 열면 됨~!



jupyter notebook에서 spark를 쓰기 위한 환경설정

- 콘솔창이나 주피터노트북에서 findspark와 pyspark 설치

  - ```
    pip install findspark
    ```

  - ```
    pip install pyspark==2.3.2
    ```

- import 해주기

  - ```
    import findspark
    findspark.inin("/opt/spark")
    >> /opt/spark는 가상환경에서 스파크가 깔려있는 위치임
    ```

  - ```
    import pyspark
    from pyspark.sql import SparkSession
    ```

  

- 버전확인

  - ```
    pyspark.__version__
    버전확인
    3.0.0.dev2나오면 OK
    ```

  - ```
    spark = SparkSession.builder.getOrCreate()
    spark
    ```



_____

200219 주피터에서 spark 사용하기 위한 환경설정 끝