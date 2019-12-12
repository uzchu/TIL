# HTML & CSS

## 1. HTML?

>- 웹페이지를 만들기 위한 언어로 웹브라우저 위에서 동작하는 언어다.
>
>- **HT** - **H**yper**T**ext, 문서와 문서가 링크로 연결되어 있다.
>
>- **M** - **M**arkup, 태그로 이루어져 있다.
>
>- **L** - **L**anguage



#### 1. 문서의 구조

- HTML 문서는 파일의 확장자가 html 혹은 htm으로 끝난다.
- 최상위 태그로 `<html>`을 사용한다. 그 하위에 `<head>` 태그와 `<body> `태그를 컨텐츠로 가지고 있다.
- `<head>` 태그는 문서를 설명하는 태그로 제목이나 키워드와 같은 정보를 담는다.
- `<body>`태그에는 문서의 내용이 위치한다.

```html
<html>
	<head>
    	문서를 정의하는 데이터가 위치함
    </head>
    <body>
    	문서에 표시되는 컨텐츠가 위치함
	</body>
</html>
```



#### 2. 예제

- ! + `tab` : 기본구조 자동완성

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    
</body>
</html>
```

- 태그명*숫자: 태그를 숫자 갯수만큼 자동 생성해 줌

```html
input*4
>>
<input type="text">
<input type="text">
<input type="text">
<input type="text">

```

- URL 설정방법 3가지

```html
    <section>
        <!--1.절대 URL-->
        <a href="http://www.google.com">절대 URL</a>
        <!--2.상대 URL-->
        <a href="basic.html">상대 URL</a>
        <!--3.element-->
        <a href="#python">파이썬(id="python"찾아가기)</a>
    </section>
```

- Form 태그(subway.html)
  - input 태그: text, radio, checkbox, password, button, hidden, submit 등 이용
  - select 태그: option value이용, 목록 내에서 그룹화 하고 싶을 땐 optgroup 함께 사용

```html
<form action="">
            <strong>이름 : </strong><input type="text" placeholder="이름을 입력하세요.">
            <h3>1.샌드위치 선택</h3>
            <!--radio button-->
            <input type="radio" name= "sandwich">에그마요<br>
            <input type="radio" name= "sandwich">이탈리안 비엠티 <br>
            <input type="radio" name= "sandwich">터키 베이컨 아보카도 <br>
            <hr>
            <h3>2.사이즈 선택</h3>
            <!--number-->
            <input type="number" min="15" max="30" step="15">
            <hr>
            <!--dropdown-->
            <h3>3.빵</h3>
            <select name="빵">
                <option value="화이트">화이트</option>
                <option value="하티">하티</option>
                <option value="파마산오레가노">파마산오레가노</option>
                <option value="위트">위트</option>
                <option value="허니오트">허니오트</option>
                <option value="플랫화이트">플랫화이트</option>
            </select>
            <hr>
            <h3>4.야채/소스</h3>
            <input type="checkbox">토마토<br>
            <input type="checkbox">오이<br>
            <input type="checkbox">할라피뇨<br>
            <input type="checkbox">핫 칠리<br>
            <input type="checkbox">바베큐<br>
            <br>
            <input type="submit" value="submit">
            
```

- html에서 css줄 때 (3가지 방식) (css.html)

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        /* 두번째방식 : embedded */
        .yellow {
            color: yellow;
        }
    </style>
    <link rel="stylesheet" href="css.css">
</head>
<body>
    <!-- 첫번째 방식 : inline -->
    <p class="red" style="color : red;">클래스 적용</p>
    <!-- 두번째 방식 : embedded-->
    <p class="yellow">임베디드 방식 적용</p>
    <!--세번째 방식 : external link-->
    <p class="green">외부 링크 방식 적용</p>
    <p id="pink">아이디 속성으로 적용</p>
</body>
</html>
```



## 2. CSS

> - HTML이 정보를 표현한다면
> - CSS는 HTML을 시각적으로 꾸며주는 역할을 한다.



#### 1. CSS를 통해서 기대되는 효과들

- 정보(HTML)과 디자인(CSS)를 분리할 수 있다.
- 정보를 수정하지 않고 디자인만 변경할 수 있다. (참고 : [css Zen Garden](http://www.csszengarden.com/))
- 검색엔진이 HTML을 해석 가능하도록 하기 때문에 더 많은 방문자들이 방문하도록 유도할 수 있다.
- HTML에서 디자인 분리함으로서 시각장애인을 위한 프로그램인 스크린리더가 HTML을 해석할 수 있도록 할 수 있다.



#### 2. 예시 (위 css.html 참고 )

```css
.green {
    color: green;
}

#pink {
    color: pink;
}
```