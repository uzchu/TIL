# HTML

명령어 내에 스타일 추가함

​	- 명령어(<>=구조, 내용)+스타일



```html
<!DOCTYPE html>
<html lang="en"><!--element/attribute -->
 <head>
  <meta charset="UTF-8">
  <style type="text/css">
	 input{
		background-color:#ff8000
	}
     input#push{
		background-color:#ff8000
	}
	.mys {background-color:#ffff33}
    .myc {color:#ffff22}
      
  </style>
  <title>html수업</title>
 </head>
 <body bgcolor="#99ffcc">
     <h1>Header</h1>
  <form>
      <input class="mys" id="push" type="button" value="push" onclick=""> *
	  <input class="mys myc" id="pull" type="button" value="pull" onclick="">
  </form>
 </body>
</html>

```

- class 여러개 쓸 때는 띄어쓰기 후 써주면 됨
- `*` 순서 중요 class보다 id가 뒤에 오면 id style이 적용됨
- div : <u>화면 끝까지!!.................................................................................................................................</u>
- span : <u>내용물에 맞춰서!!</u>

##### 단점

1. 모듈 X  >> 재활용 떨어짐  >> XML (html에서 스타일을 제거한 것) >>차세대로 XHTML 만듦 (W3C에서 만듦 >But 제약 많음..) >> HTML5(XHTML에 대항하기 위해 만듦(어떤 단체에서..) > 구글이 선택..! > 현재 표준)
   - XML
     - 인기 왕많음
     - 웹기술로만 쓰이는게 아니라 전반적인 산업내에서 데이터를 표현하는 기술로 자리잡음
2. 스타일(Customizing)  >> CSS
3. User 상호작용 > 실행시 의도 파악 > 프로그래밍