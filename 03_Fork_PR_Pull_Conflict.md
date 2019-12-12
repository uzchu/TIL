# Fork & Pull Requst

## 1. Fork?

> - **Fork**는 **다른 사람의 Github에 있는  `respository`**를 **내 Github `repository`**로 그대로 복제하는 기능
> - `original repository`에서 내가 어떤 부분을 **수정하거나 추가 기능을 넣고 싶을 때** 는 `pull request`를 이용 

## 2. Pull request

- 다른사람의 `original repository`에 변경 사항을 적용하고 싶으면 해당 저장소에 `pull request`를 해야함
  - `pull request`가 `original repository`의 관리자로 부터 승인 되었으면 내가 만든 코드가 `commit, merge`되어 `original`에 반영됨.
  - `pull request` 하기 전까지 내 Github에 있는 `forked repository`에만 변경사항 적용



## 3. 사용방법 예시 (n-행시)

1. 다른사람의 Github에서 `original repository`를 `fork`

   ![image-20191211092029495](C:\Users\student\AppData\Roaming\Typora\typora-user-images\image-20191211092029495.png)

2. 내 Github에 가서 `fork`된 게시물 확인 후, 내 컴퓨터에 내려받기 위한  `clone` 작업수행

   - `fork`된 `repository`에서 `Clone or download`버튼 클릭 후 주소 복사

   ![image-20191211092132230](C:\Users\student\AppData\Roaming\Typora\typora-user-images\image-20191211092132230.png)

```shell
$ git clone https://github.com/uzchu/n-haengsi.git(복사된 주소)
```

3. 수정 후 내 Github에 `push`

```shell
$ git add 파일명
$ git commit -m "Modify 파일명"
$ git push origin master
```

4. `original repository`에 변경사항을 반영하고 싶을 때, 원작자에게 `pull request` 요청
   
   -  `original repository`로 이동 
   
   ![image-20191211092416120](C:\Users\student\AppData\Roaming\Typora\typora-user-images\image-20191211092416120.png)
   
   - `pull request`탭으로 가서 `New pull request`버튼 클릭, 공손하게 요청
   
   ![image-20191211092649821](C:\Users\student\AppData\Roaming\Typora\typora-user-images\image-20191211092649821.png)
   
5. 승인 되면 해당 저장소에 `merge`됨



---

# Clone

## 1. clone?

> - git clone은 git pull과 비슷하지만 클라이언트 상에 아무것도 없을 때 서버의 프로젝트를 내려받는 명령어
> - 저장소의 내용을 다운로드 받고 자동으로 init도 됨



## 2. 사용방법 예시

```shell
$ git clone [저장소 주소]
```



---

# Stash

## 1. stash?

> 하던 작업을 임시로 저장해 두고 싶을 때 사용하는 명령어
>
> git stash 명령을 사용하면 워킹 디렉토리에서 수정한 파일들만 저장



## 2. pull을 잘못해서 작업한 것(이전버전)이 날아갔을 때

- 작업하던 것을 `git stash`를 실행해 임시저장
- `git log`로 이전 작업의 `commit`(`parent`)확인
- `git checkout`으로 해당 `parent`로 이동하면 복구완료

---

- `git status` 실행했는데 `working directory`가 깨끗하지 않을 때, `git stash`를 실행하면 작업하던 것을 다른곳에 임시보관하기 때문에 `working directory`가 깨끗해짐.
- `working directory`가 깨끗해졌으므로 `pull`과 같은 작업을 정상적으로 수행 가능



# Pull 상황에서 Conflict

### - 로컬저장소 <-> 원격저장소 차이 오류

#### 1.  파일명이 다를 때

- 일반적으로 하듯 `pull`과 `add, commit, push`사용해도 무방

#### 2. 파일명이 같을 때

- 작업창에서 골라서 저장 후, `add, commit`수행
- `commit`메세지는 문제를 해결했다라는 뜻의 `Resolve confilct`라고 써주는 것이 관례

```
$ git add 파일명
$ git commit -m "Resolve conflict"
```



#### 질문사항

- clone은 repository가 내 컴퓨터에 없을 때, repository 자체를 내려받을 때 사용
- 파일명이 같을 때 일단 pull해서 가져온 다음에 방법이 기억이 안나요ㅜㅜ