# Telegram API

>- 참고문서
>  - **about bot** : https://core.telegram.org/bots
>  - **bot API** : https://core.telegram.org/bots/api

### - Telegram API로 챗봇만들기 프로젝트

1. telegram PC.ver 다운

2. telegram에서 botfather를 찾아서 /newbot 생성 후 chatbot name을 설정해 줌

   - 끝 글자가 bot으로 끝나야 하고 이미 있는 이름은 사용할 수 없음
   - botfather가 Done!외치며 token주소를 발급해주면 완료

3. 챗봇 기능구현을 위한 python파일 제작 (app.py)

   ```shell
   #사용할 모듈들
   from flask import Flask
   from flask import request
   from decouple import config
   import requests
   import random
   
   app = Flask(__name__)
   
   <5~7번으로 채워질 부분>
   
   if __name__ == '__main__':
       app.run(debug=True) #코드를 수정해서 저장을 누르면 서버가 알아서 재실행 됨
   ```

4. https://core.telegram.org/bots/api 페이지로 이동

5. **Making request**에 나와있는 예시`https://api.telegram.org/bot<token>/METHOD_NAME`에 맞춰 제작

   ```python
   app_url = f'https://api.telegram.org/bot{token}'
   ```

6. token변수의 값을 지정해 줘야하는 데, token은 공개되면 문제가 발생될 수 있음. 따라서,  `.env`라는 파일을 따로 만들고, 그안에 중요한 token값이나 api_id등을 넣어두고 config 모듈로 가져오는 방식 사용

   - `.env`활용하기 위한 모듈설치 및 `.env`파일 생성

   ```shell
   $pip install python-decouple
   $touch .env
   ```

   - `.env`파일에 가서 아래와 같이 내용 생성 (변수명은 대문자로, 띄어쓰기 없이 쓰기)

   ```s
   TELEGRAM_BOT_TOKEN=100******9:AAET******U_cYxqj*******Os
   NAVER_CLIENT_ID=hO*****IMATB******8
   NAVER_CLIENT_SECRET=27*****ZfR
   ```

   - config를 이용해 사용예시 (app.py)

   ```python
   token = config('TELEGRAM_BOT_TOKEN')
   naver_client_id = config('NAVER_CLIENT_ID')
   naver_client_secret = config('NAVER_CLIENT_SECRET')
   ```

7. API와 @(데코레이터)를 사용해 원하는 대로 챗봇의 기능을 만들어 주면 됨 (app.py)

   ```python
   #데코레이터만 이용했을 때 예시
   @app.route(f'/{token}', methods=["POST"])
   def telegram():
       from_telegram = request.get_json()
       chat_id = from_telegram.get('message').get('from').get('id')
       text = from_telegram.get('message').get('text')
   	
   	if text =='/로또':
       	reply = random.sample(range(1,46),6)
       requests.get(f'{app_url}/sendMessagechat_id={chat_id}&text={reply}')
       return '', 200
   
   #API 이용했을 때 예시(naver api papago)
   @app.route(f'/{token}', methods=["POST"])
   def telegram():
       from_telegram = request.get_json()
       chat_id = from_telegram.get('message').get('from').get('id')
       text = from_telegram.get('message').get('text')
   
   	if text[0:4] == '/번역 ':
               headers = {
                   'X-Naver-Client-Id' : naver_client_id,
                   'X-Naver-Client-Secret' : naver_client_secret
               }
               data = {
                   'source': 'en',
                   'target': 'ko',
                   'text': text[4:]
               }
               papago_url = 'https://openapi.naver.com/v1/papago/n2mt'
               papago_res = requests.post(
                   papago_url, 
                   data=data, 
                   headers= headers
                   )
               papago_res = papago_res.json()
               reply = papago_res.get('message').get('result').get('translatedText')
           
   	else:
   		reply = text
       requests.get(f'{app_url}/sendMessagechat_id={chat_id}&text={reply}')
       return '', 200        
   ```

8. 구동되는지는 git bash 창에서 확인

   ```shell
   $ python app.py
   ```

9. flask는 내 컴퓨터 안에 있는 서버이기 때문에, 로컬서버를 오픈하기 위한(다른 사람도 접근 가능하도록하기 위한) `webhook`작업을 해줘야 함. (ngrok 이용)

10. https://ngrok.com/download에 가서 다운로드 후, flask가 있는 폴더에 압축 해제한 뒤 폴더 맨위 경로부분을 지우고 `cmd`화면으로 이동

    ```shell
    ngrok --user http 5000 #정확하게 기억이 안남..
    #아래는 인터넷에 적혀있던 내용
    ./ngrok http 5000
    ```

11. cmd창에서 `http ~~~~.ngrok.io`부분 복사, set_webhook.py파일 생성 후 아래와 같이 채워줌

    ```python
    from decouple import config
    import requests
    
    token = config("TELEGRAM_BOT_TOKEN")
    app_url = f'https://api.telegram.org/bot{token}'
    
    set_webhook_url = f'{app_url}/setWebhook?url=https://f4******6.ngrok.io/{token}'
    response = requests.get(set_webhook_url)
    print(response.text)
    ```

12. git bash창에서 확인

    ```shell
    $ python set_webhook.py
    #아래와 같이 나오면 성공
    {"ok":true,"result":true,"description":"Webhook was set"}
    (venv)
    ```

13. ngrok의 단점은 내 컴퓨터를 항상 켜놔야만 챗봇이 기능을 수행한다는 점과 내 컴퓨터 서버용량만큼만 접속이 가능하다는 점. 따라서 `pythonanywhere`를 이용해 다시 webhook을 걸어주는 작업이 필요함

    - `pythonanywhere`외에도 많이 있지만, **무료**중에 가장 쓸만한 곳이라고 하였음
    - [pythonanywhere](https://www.pythonanywhere.com) 사이트에 가입 후 web에 가서 python버전, flask 등을 선택 후 file로 가서 mysite에 flask.app.py로 들어감
    - flask.app.py에 기존 app.py의 모든 내용을 복사+붙여넣기 후 저장
    - 다시 web으로 가서 Reload버튼 누르면 끝!



### 기타

- git bash창에서 json형태 읽을 때 꿀팁

```json
#git bash창에서 이런 형태로 되어있는 것 복사(한 줄로 되어 있음)
{"message":{"@type":"response","@service":"naverservice.nmt.proxy","@version":"1.0.0","result":{"srcLangType":"en","tarLangType":"ko","translatedText":"▒ȳ▒▒ϼ▒▒▒."}}}
#Visual Studio Code에서 json파일을 하나 생성 후 붙여넣기, 'shift'+'alt'+'f'키 누르기
{
    "message": {
        "@type": "response",
        "@service": "naverservice.nmt.proxy",
        "@version": "1.0.0",
        "result": {
            "srcLangType": "en",
            "tarLangType": "ko",
            "translatedText": "▒ȳ▒▒ϼ▒▒▒."
        }
    }
}
#이렇게 보기 좋은 형태로 바뀜!>> 위에 get가져올 때 유용함
```

