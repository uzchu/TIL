# Push & Pull

> Github에서 파일을 올리고 가져오는 방식



## 1. Push

- `git push` : 원격 저장소에 파일 올리기

```shell
$ git push origin master
```



## 2. Pull

- `git pull` : 원격 저장소에서 파일 가져오기
  - `pull`  : (구조가 만들어진 후) 변경된 값만 가져오고 싶을 때
  - `clone` : (맨 처음) 구조를 만들 때

```shell
$ git pull origin master
```



## 3. 사용방법 예시

1. 멀티캠퍼스에서 작업한 작업물을 추가함(`add`, `commit` 이용)

```shell
$ git add 파일명.md
$ git commit -m "Add 파일명.md"
```



2. 멀티캠퍼스 컴퓨터에서 github 저장소로 작업물을 업로드함(`push` 이용)

```shell
$ git push origin master
```



3. 집에서 `git status`로 `working tree`가 깨끗한지 확인 한 후, `git pull`로 파일을 가져옴

```shell
$ git status
$ git pull origin master
```



4. 파일이 잘 가져와졌는지 확인 ()

```shell
$ git log --oneline
```





## 4. 참고사항

- `git status` 로 `working tree clean` 인 상태인지 확인 후 `push/pull` 실행
- `git diff` : 파일 내 변경사항 알려주는 명령어
- `cat '파일명'` : 파일 정보를 보여주는 명령어
- `git commit -m "Add(...) 파일명"` : commit 메세지의 첫 글자는 대문자로 써주는 것이 좋음
- `touch '파일명'` : 새로운 문서 만들 때 사용하는 명령어
- `mkdir '폴더명'` : 새로운 폴더 만들 때 사용하는 명령어
- `git add` . : 한번에 여러파일 업로드
- `ctrl + L` : `git bash`창 에서 맨위로 올리기



## 5. 집에서 처음 할 때

1. git 다운로드 (아무것도 안 건들고 설치, 마지막에 Bash 추가 설치 체크(아랜 해제))
2. git bash 실행
3. git clone [가져올 repository 주소]
4. 생성된 repository로 이동 (cd 폴더명)
5. ls로 잘 불러와 졌는지 내용물 확인
6. git config --global user.email "내 이메일 주소"
7. git config --global user.name "내 이름"
8. 파일 수정하고 add, commit 실행
9. git push origin master 실행
10. 로그인 창 뜸 >> 로그인 함
11. 수정된 업로드 완료!
12. 이후,  - status : 파일 수정 확인 - add, commit, push : 파일 수정 후 업로드 과정