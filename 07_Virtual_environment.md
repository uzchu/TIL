# Virtual environment (가상환경)

> - 기본적으로 라이브러리는 전역적으로 적용이 되기 때문에 새로운 작업시 기존 버전으로 사용됨
> - 프로젝트 시 다양한 버전의 라이브러리를 사용할 경우를 위해 가상환경 사용

## # pip & venv & .gitignore

## 1. pip

> - pip는 파이썬의 각종 라이브러리들을 설치 및 관리해주는 패키지 매니저
> - pip로 설치할수 있는 라이브러리 정보 : https://pypi.python.org/pypi
> - pypi사이트 뿐 아니라 로컬 모듈도 설치 가능!



#### 1. pip 설치 리스트 확인

- 현재 추가된 가상환경 내에 라이브러리 목록을 보여주는 명령어 2가지

```
$ pip list
$ pip freeze
```

- `pip freeze`는 pip install에 맞는 포맷으로 리스트를 뿌려주어 `requirements.txt`를 아래와 같이 생성 :star:

```
$ pip freeze > requirements.txt
```



#### 2. pip 패키지 설치 및 업그레이드

- 일반적인 외부라이브러리 설치

```
$ pip install 패키지명
```

- 로컬 외부라이브러리 설치, 일반적으로 압축파일로 특정 사이트에서 제공해주는 경우

```
$ pip install 파일명
```

- 파이썬의 프로젝트에서는 일반적으로 프로젝트에 필요한 라이브러리 리스트를 `requirements.txt` 파일에 입력해 둠 :star:
- 파일에 기록된 패키지리스트 모두 설치하는 방법 :star:

```
$ pip install -r requirements.txt
```





## 2. venv

>- 가상 환경을 만들고 관리하는 데 사용되는 모듈



#### 1. 가상환경 생성하기 :star:

1. venv라는 가상환경 폴더 생성

```shell
$ python -m venv venv
```

2. 현재 폴더에 venv가 있는지 확인

```shell
$ ls
```

3. venv가 있는 폴더에서 가상환경 구동

```shell
$ source venv/Scripts/activate
```

- 보다 편리한 사용을 위해 필요한 설정 (매번 위 코드를 치는 수고를 덜기 위한 과정)
  
  - deactivate 된 상태에서 수행!
  
    ```shell
    $vi ~/.bashrc
    >>어떤 화면으로 이동
    alias activate="source venv/Scripts/activate"
    >>esc 3~4번 친 후 :wq 를 쳐서 나옴
    $source ~/.bashrc
    ```

4. 이후 venv가 있는 위치에서 activate/deactivate 자유롭게 실행

```shell
$ activate #가상환경을 구동시키는 명령어
$ deactivate #가상환경을 빠져나오는 명령어
```

- 이렇게 가상환경으로 변경된 상태에서 pip 명령어로 패키지를 install하면 별도의 격리된 공간에 라이브러리가 설치됨!



## 3. .gitignore이란?

> - Project에 원하지 않는 Backup File이나 Log File , 혹은 컴파일 된 파일들을 Git에서 제외시킬수 있는 설정 File
> - 즉, 가상환경에 있는 라이브러리들을 Github에 push할 때 올라가지 않게 함!

#### 1. .gitignore 파일 만들기

- 항상 최상위 Directory에 존재해야 함

1. http://gitignore.io 사이트에서 .gitignore파일의 내용 생성 후 전체 내용 복사

    (실습 땐, 3항목(python,venv,flask) 설정) >> **프로그래밍 언어**, **개발 환경**, **운영체제**

2. 가상환경의 activate된 상태에서 gitignore파일 생성

   ```shell
   vi .gitinore
   ```

3. 이동된 페이지에 복사한 내용 붙여넣기하면 완료

   - `esc`+`:wq` 쳐서 빠져 나오기



## 4. 팀프로젝트 시 설치 라이브러리 공유방법 정리

>github에 내가 작업한 라이브러리가 올라가지 않으므로, 팀원들과 라이브러리 목록을 공유할 필요가 있음.

1. 작업하던 가상환경 내에서 `$ pip freeze > requirements.txt` 생성
2. `requirements.txt`파일 안에 내가 설치했던 라이브러리 목록 다 있음
3. 팀원들은 `requirements.txt`파일만 받아서 `$ pip install -r requirements.txt`만 수행하면 됨

