### Tensorflow에서 GPU활용할 때, NVIDIA말고 intel 쓸 수 있을까?

원래는 텐서플로 자체에서 NVIDIA만 지원함

- 내 컴퓨터에 NVIDIA가 있는지 아는 방법?
  - 바탕화면에서 오른쪽키를 눌러서 NVIDA어쩌구가 뜨면 설치되어 있는것!
  - NVIDIA가 있다면 https://www.tensorflow.org/install/gpu 여기를 참고해서 드라이브와 툴킷을 설치하고 환경변수 설정해서 사용하면 됨





intel gpu를 사용해서 tensorflow나 keras를 돌리려면 Opencl이나 plaidML을 사용하면 된다고 함!

오늘 plaidML을 한번 설치해보겠음

[참고한 문서][https://plaidml.github.io/plaidml/docs/install#windows]

1. 검색창에 Windows PowerShell 검색해 관리자모드로 켬

   ![image](https://user-images.githubusercontent.com/58683097/77889275-93ebd580-72a8-11ea-81c3-ac87aa08c57c.png)

   

2. chocolatey설치

   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```

   ![image](https://user-images.githubusercontent.com/58683097/77889363-ae25b380-72a8-11ea-9af8-00ba79162fa4.png)

   

3. python 설치하기

   ```powershell
   choco install -y python git vcredist2015
   ```

   ![image](https://user-images.githubusercontent.com/58683097/77889856-8125d080-72a9-11ea-8baa-738192f57ccc.png)

   

4. 위에 창을 끄고 다시 권한이 없는 Window PowerShell 실행

   ![image](https://user-images.githubusercontent.com/58683097/77891137-7ec47600-72ab-11ea-95fd-34f19238bbd5.png)

   

5. 다시 켠 창에 아래 코드 입력

   ```powershell
   pip install -U plaidml-keras
   ```

   ![image](https://user-images.githubusercontent.com/58683097/77891782-7587d900-72ac-11ea-9b9e-2c3ae9171fea.png)

   

6. plaidml-setup하기

   ```powershell
   plaidml-setup
   ```

   ![image](https://user-images.githubusercontent.com/58683097/77892203-2e4e1800-72ad-11ea-84dc-ec66578bbd36.png)

   - Enable experimental device support? (y,n)[n]:에는 y입력
   - Default device? 묻는건 알아서 intel선택하기

7.  끝! plaidML로 GPU사용할땐 아래 코드 추가해주기

   ```powershell
   import os
   os.environ["KERAS_BACKEND"] = "plaidml.keras.backend"
   ```





### 실제 예시

