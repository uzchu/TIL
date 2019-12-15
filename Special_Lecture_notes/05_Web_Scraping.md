## Web scraping (with Python)

> - Web scraping : 특정 페이지에서 원하는 정보를 추출해 내는 것 (가장 큰 개념인 듯 함)
> - Web crawling : 웹을 구동시켜서 웹을 돌아다니면서(?) 링크를 수집하는 것
> - Web parsing : 웹 페이지 내에 있는 key값을 통해 추출하거나 어떤 패턴을 분석해서 정보를 수집하는 것



## 1. Web?

> 모든 요청은 브라우저의 주소창을 이용



## 2. Web Scraping 방법

- `pip install requests` : git bash창에서 requests 모듈 설치
- `pip list` : 설치된 라이브러리 목록
- `pip install bs4` : bs4 설치 (BeautifulSoup이 들어있음)



### 1. Requests

> Python에서 HTTP 요청을 보내는 모듈

- 사용방법
  - `requests`모듈을 불러온 뒤, 'http://www.uzchu.com'주소로 get방식 요청을 보내고 응답값을 받아옴

```
import requests
URL = 'http://www.uzchu.com'
response = requests.get(URL)
print(response.text) #모든 속성값을 text로 받아 출력
```

### 2. BeautifulSoup

> bs4 패키지 안에 있는 모듈로, 파싱할 때 사용

- 사용방법
  - `bs4`에 있는 `BeautifulSoup`를 불러온 뒤,`requests`로 받아온 응답값에서 필요한 부분을 추출
    - `#` : id
    - `.` : class
    - `p` : element
    - `*` : all elements
    - `>` : 바로 부모 자식 간
    - ` ` : 손자? 

```python
import requests
from bs4 import BeautifulSoup

response = request.get('http://www.naver.com').text #주소가져오기
soup = BeautifulSoup(response,'html.parser') #주소 파싱하기
#1개 가져올 때
exchange(웹에서 가져올 것) = soup.select_one('개발자 도구를 이용해 복사한 selector복사').text
print(exchange) #text를 위에 안쓰고 여기에 써도 됨 ex)print(exchange.text)
#여러개 가져올 때
exchanges(웹에서 가져올 것) = soup.select('개발자 도구를 이용해 복사한 selector복사 & nth-child 이런 부분 지우고 공백으로 둠').text
for exchange in exchanges:
    print(exchange) #text를 위에 안쓰고 여기에 써도 됨 ex)print(exchange.text)
```



## 3. Python 파일 조작방법

#### 1. 파일 읽고 저장

```python
f = open('mulcam.txt','w') #새로 만들 파일명
for i in range(10):
    f.write(f"This is line {i}. \n")
    pass
f.close() #요샌 파이썬이 똑똑해져서 안써줘도 됨

#read write
with open('mulcam2.txt','w') as f
    for i in range(10):
        f.write(f"This is line {i}. \n")
        pass
    f.close()
    pass

#read mode
with open('mulcam.txt','r') as f: #파이썬 파일 읽어오기
    lines = f.readlines()
    lines.sort(reverse=True)
    for line in lines:
        print(line.strip())
    pass
```



####  2. format 형식

```python
import random

name = "홍길동"
english_name = "hong"

#pyformat
print("안녕하세요, {}입니다. My name is {}".format(name,english_name))

#f-string
print(f"안녕하세요, {name}입니다. My name is {english_name}")

numbers = list(range(1,46))
lotto = random.sample(numbers,6)
print(f"오늘의 행운의 번호는 {sorted(lotto)}입니다.")
```





