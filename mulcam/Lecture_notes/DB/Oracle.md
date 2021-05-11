# Oracle

#### 설치

1. 홈페이지 접속

2. 회원가입 (다운받으려면 로그인 필수)

3. 메뉴에서 다운로드로 들어가서 'Oracle Database 11g Release 2' 설치

4. 본인 환경에 맞는(Microsoft Windows(x64)) File1,2 둘 다 다운받기

5. 압축해제 후 2에 있는 database복사해서 1에 붙여넣기

6. 1번 폴더에가서 setup.exe 열기

7. 경고창 뜨면 예하고 넘어감

8. My oracle support를 통해 보안갱신 수신 체크박스 해제하고 넘어감 >

9. 데이터베이스 생성 및 구성

10. 데스크톱 클래스

11. 비밀번호 아무거나 치고 넘어감 (내 컴퓨터에 설치한거 비밀번호는 집 전화번호 뒤에 4자리)

12. 완료 누름 (20분 정도 소요)

13. 시작메뉴에서 오라클 폴더 中 SQL Plus들어감 (빠져나가고 싶으면 exit치면 됨)

    - DCL에 속하는 명령어를 활용해서 sys와 system계정을 열어서 데이터 사용할 것..

    - sys와 system 의 차이점 : 데이터를 생성하는 권한은 sys만 있음

14. 사용자명에 system 치고 비밀번호 아까 위에서 설정한거 입력 후 enter

15. alter user scott identified by tiger account unlock;

    : alter는 수정하는 명령어.. 사용자명 scott을 tiger라는 비밀번호로 unlock하겠다..

16. select username from dba_users    =>얘를 치고나면 아래에 2가 생김

    2 ;   =>;치고 엔터

17. connect scott : 연결하는것 비밀번호: 나오면 비번(여기선 'tiger')치면 됨

    - connect scott/tiger 이런 형식으로 쳐도 됨



1. sqldeveloper들어가서 sqldeveloper.exe 실행
2. 시작페이지는 꺼도 상관 無
3. 왼쪽에 접속 밑에 +기호 클릭, 새로만들기에서 Name은 아무거나 써도 됨
4. 아래 사용자 정보
   - 사용자 : scott
   - 비번 : tiger
   - 포트 : 1521
   - SID : orcl
5. 테스트 후 성공 하면, 접속 누르면 됨
6. 워크시트 창 나오면 됨 

=> 한 번만 설정하면 됨!

7. 도구 > 환경설정에 가면 글꼴설정이나 글자 크기 설정 가능

