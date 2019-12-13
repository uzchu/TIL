## Flask

>- **플라스크**(Flask)는 파이썬으로 작성된 마이크로 **웹 프레임워크**의 하나
>- Werkzeug 툴킷과 Jinja2 템플릿 엔진에 기반을 둠



#### 1. 웹 프레임워크란?

- **웹 프레임워크**(web framework) 또는 **웹 애플리케이션 프레임워크**(Web application framework)는 동적인 웹 페이지나, 웹 애플리케이션, 웹 서비스 개발 보조용으로 만들어지는 **애플리케이션 프레임워크**의 일종
  - 애플리케이션 프레임워크 : **애플리케이션 프레임워크**(Application Framework)는 프로그래밍에서 특정 운영 체제를 위한 응용 프로그램 표준 구조를 구현하는 [클래스](https://ko.wikipedia.org/wiki/클래스)와 [라이브러리](https://ko.wikipedia.org/wiki/라이브러리) 모임
- 웹 페이지를 개발하는 과정에서 겪는 어려움을 줄이는 것이 주 목적으로 통상 데이터베이스 연동, 템플릿 형태의 표준, 세션 관리, 코드 재사용 등의 기능을 포함



#### 2. Flask 사용법 (처음 사용 시)

1. 가상환경에서 flask폴더를 생성 후 해당폴더에 Flask 설치, code창 실행
   - ls를 통해 현재 폴더에 venv가 있는지 확인
   - venv가 있다면, 가상환경 만들 때 activate만 치면 됨

```shell
$ ls
$ activate

$ mkdir flask
$ ls
$ cd flask
$ pip install Flask
$ code .
```

2. 아래와 같은 형식으로 python파일을 만들고 저장
   - 단, 파일의 이름을 Flask.py로 짓지 않기 (기존 flask파일과 충돌할 수 있음)

```python
from flask import Flask
app = Flask(__name__)

@app.route('/naver') #@는 데코레이터, 우리 서버에 길을 만들어 주는 용도. 이름은 /naver
def hello_world():
    return 'Hello, World!'
```

3. git bash로 가서 파이썬 파일을 구동

```shell
$ python app.py
$ flask run
 * Running on http://127.0.0.1:5000/naver
```



#### 3. Flask 응용 사용법

##### 1. 주소창에 변수 직접 넣기

1. 아래와 같은 형식으로 python파일을 만들고 저장

```python
from flask import Flask
from flask import request
from flask import render_template
import random
import requests
app = Flask(__name__) #app서버 이름

@app.route('/greeting/<string:name>')
def greeting(name):
    return f'Hello, {name}!'

@app.route('/cube/<int:num>')
def cube(num):
    result = num**3
    return str(result) #응답값은 항상 문자만

@app.route('/lunch/<int:people>')
def lunch(people):
    menu = ['짜장면','짬뽕','탕수육','동파육','군만두','유린기','볶음밥']
    order = random.sample(menu,people)
    return str(order)
```

2. git bash로 가서 파이썬 파일을 구동

```shell
$ python app.py
$ flask run
 * Running on http://127.0.0.1:5000/greeting/jisoo
 * Running on http://127.0.0.1:5000/cube/3
 * Running on http://127.0.0.1:5000/lunch/5
```



##### 2. templates 함께 활용하기 (1개의 html)

1. 아래와 같은 형식으로 python파일을 만들고 저장

```python
from flask import Flask
from flask import request
from flask import render_template
import random
import requests
app = Flask(__name__) #app서버 이름

@app.route('/html_file') #Just 출력
def html_file():
    return render_template('html_file.html')

@app.route('/hi/<string:name>') #주소창에서 입력값 받기
def hi(name):
    return render_template('hi.html', your_name=name)

@app.route('/naver') #Form화면에서 입력값 받기
def naver():
    return render_template('naver.html')

```

2. 아래와 같은 형식으로 html파일 만들고 저장

```html
#html_file.html
<h1>This is h1 tag!</h1>
<p>This is p tag!</p>

#hi.html
<h1>Hi, {{your_name}}</h1>

#naver.html
<h1>네이버 검색</h1>
<form action="https://search.naver.com/search.naver">
    <input type="text" name="query">
    <input type="submit">
</form>
```

3. git bash로 가서 파이썬 파일을 구동

```shell
$ python app.py
$ flask run
 * Running on http://127.0.0.1:5000/html_file
 * Running on http://127.0.0.1:5000/hi/jisoo
 * Running on http://127.0.0.1:5000/naver
```



##### 3. templates 함께 활용하기 (2개의 html)

1. 아래와 같은 형식으로 python파일을 만들고 저장

```python
from flask import Flask
from flask import request
from flask import render_template
import random
import requests
app = Flask(__name__) #app서버 이름

@app.route('/ping') #입력화면 만들기
def ping():
    return render_template('ping.html')

@app.route('/pong') #출력화면 만들기
def pong():
    name2 = request.args.get('name1')
    message2 = request.args.get('message1')
    return render_template('pong.html', name3 = name2 , message3= message2)
```

2. 아래와 같은 형식으로 html파일을 만들고 저장

```html
#ping.html
<form action="/pong"> #출력될 html주소
    <input type="text" name="name1">
    <input type="text" name="message1">
    <input type="submit">
</form>

#pong.html
<h1>From {{name3}} : {{message3}}</h1>
```

3. git bash로 가서 파이썬 파일을 구동

```shell
$ python app.py
$ flask run
 * Running on http://127.0.0.1:5000/ping
```

