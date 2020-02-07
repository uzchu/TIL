# 파이널 프로젝트

인스타 크롤러

1. conda에 가상환경 만들기

   ```
   conda create -n insta python=3.7
   ```

   

2. huaying / instagram-crawler github에 가서 파일 다운 압축해제하고 그 파일을 경로로 지정

   ```
   cd c:/users/student/downloads/instagram-crawler-master
   ```

   

3. 가상환경 구동

   ```
   conda activate insta
   ```

   

4. requirements.txt 다운 받아서 환경 똑같이 만들어주기

   ```
   pip install -r requirements.txt
   ```

   

5. 크롤링 코드 실행

   ```
   python crawler.py posts_full -u cal_foodie -n 100 -o ./output
   ```

   

6. 그럼 다운 완료~

7. test_output파일 만들고 그 안에 output파일 넣기

8. pictures_인스타계정명 폴더 생성

9. output파일명 변경

   - output_인스타계정명

10. 슬랙에서 사무엘님이 보내주신 파일 다운

11. 파일 열어서 user_name 부분 바꿔주기

12. 실행~~ 완료!

##### 미션

좋아요 수를 파일명에 추가하기



