from flask import Flask
from flask import request
from flask import render_template
import random
import requests
app = Flask(__name__) #app서버 이름

@app.route('/') #@는 데코레이터, 우리 서버에 길을 만들어 줄것. 이름은 / , /의미는 localhost
def hello_world(): #서버에서 처리할 내용
    return 'Hello, World!'

@app.route('/mulcam')
def mulcam():
    return 'This is mulcam!'

#@app.route('/greeting/jisoo')
#def greeting():
#    return 'Hello, jisoo'

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

@app.route('/html')
def html():
    return '<h1>안녕하세요!</h1>'

@app.route('/html_file')
def html_file():
    return render_template('html_file.html')

@app.route('/hi/<string:name>')
def hi(name):
    return render_template('hi.html', your_name=name)

@app.route('/naver')
def naver():
    return render_template('naver.html')

@app.route('/ping')
def ping():
    return render_template('ping.html')

@app.route('/pong')
def pong():
    name = request.args.get('name')
    message = request.args.get('message')
    return render_template('pong.html', name = name , message= message)

#실습
@app.route('/god')
def god():
    return render_template('god.html')

    
@app.route('/make')
def make():
    name = request.args.get('name')
    options = ['예쁜얼굴','왕손','재능','인내심','돈','왕발','남친','여친','기럭지','큰 키','작은 키']
    order = random.sample(options,2)
    return render_template('make.html',name = name, message1 = order[0], message2 = order[1])

@app.route('/vonvon')
def vonvon():
    return render_template('vonvon.html')

@app.route('/vonvon_result')
def vonvon_result():
    name = request.args.get('nikname')
    features = ['똑똑함','왕발','유머감각','의리','코딩실력']
    chosen = random.sample(features,3)
    chosen = ','.join(map(str,chosen))
    return render_template('vonvon_result.html', name = name, chosen= chosen)


@app.route('/ascii')
def ascii():
    return render_template('ascii.html')


@app.route('/ascii_result')
def ascii_result():
    # 1. form태그로 날린 데이터를 받는다
    word = request.args.get('keyword')
    # 2. word를 가지고 ascii_art API 요청주소로 요청을 보낸다
    result = requests.get(f'http://artii.herokuapp.com/make?text={word}').text
    # 3. API 응답결과를 html파일에 담아서 보낸다
    return render_template('ascii_result.html', result = result )

@app.route('/lotto_check')
def lotto_check():
    return render_template('lotto_check.html')

@app.route('/lotto_result')
def lotto_result():
    lotto_round = request.args.get('lotto_round')
    response = requests.get(f'https://dhlottery.co.kr/common.do?method=getLottoNumber&drwNo={lotto_round}')
    lotto = response.json() #json을 딕셔너리 형태로 가져옴.
    
    #1.for문을 활용한다
    winner = []
    for i in range(6):
       winner.append(lotto[f'drwtNo{i+1}'])
    #2.List Comprehension
    #winner = [lotto[f'drwtNo{i}']for i in range(1,7)]
 

    numbers = request.args.get('numbers') #string
    numbers = numbers.split() # list
    numbers_int = []
    for number in numbers:
        number = int(number)
        numbers_int.append(number)
    
    matched = len(set(winner) & set(numbers_int))
    if matched ==6:
        result = '1등입니다!'
    elif matched == 5:
        if lotto["bnusNo"] in numbers_int:
            result = '2등입니다!!'
        else:
            result = '3등입니다!!'
    elif matched == 4:
        result = '4등입니다...'
    elif matched == 3:
        result = '5등입니다...'
    else:
        result = '꽝입니다...'


    return render_template('lotto_result.html', lotto_round = lotto_round , winner = winner, numbers=numbers_int, result=result)


if __name__ == '__main__':
    app.run(debug=True)