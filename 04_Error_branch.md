## 오류상황

#### 1. ~ (master)에서 빠져나오고 싶을 때

```shell
$ rm -rf .git
```

#### 2. stage에 올라간 것 다시 빼는 법 (`add`된 것 되돌리기)

```shell
$ git rm --cached 파일명
```

#### 3. 잘못된 commit 메세지 수정

```shell
$ git commit --amend
```

#### 4. 마지막 commit으로 되돌리고 싶을 때

```shell
$ git reset --hard commit번호
```



## Checkout

> 특정 commit을 볼 때 사용하는 명령어

```shell
$ git checkout 커밋번호 or 브랜치명
>> student@M1601 MINGW64 ~/problems ((0a6431a...))
or
>> student@M1601 MINGW64 ~/problems (master)
```



## Branch

> - 브랜치란 독립적으로 어떤 작업을 진행하기 위한 개념
>
> - 필요에 의해 만들어지는 각각의 브랜치는 다른 브랜치의 영향을 받지 않기 때문에, 여러 작업을 동시에 진행할 수 있음

#### 1. branch 삭제

```shell
$ git branch -D 브랜치명
>> merge되지 않은 브랜치를 지울 때
$ git branch -d 브랜치명
>> merge했던 브랜치를 지울 때
```

#### 2. branch 병합

1. 병합하기 전 `master`브랜치로 먼저 이동

```shell
$ git checkout master
```

2. `branch` 병합 명령

```shell
$ git merge 합칠 브랜치명(A)
```

3. 병합된 `branch`제거
   - 1개의 master브랜치만 남기는 게 좋음

```shell
$ git branch -d 합쳤던 브랜치명(A)
```

#### 3. branch 병합 시 발생되는 상황 3가지

1. 기존 master에 이후 작업내용이 없을 때 : Fast- forward

2. 기존 master에 이후 작업내용이 있을 때 (충돌이력 X) : Auto merge

3. 기존 master에 이후 작업내용이 있을 때 (충돌이력 O) : Merge conflict
   - current change : master 내용만 살림
   - incoming change : merge 하려던 브랜치 내용만 살림
   - both changes : 두 내용 다 살림

