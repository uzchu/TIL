#read mode #f는 맘대로 파일이름 ↓
#with open('mulcam.txt','r') as f:
#    lines = f.readlines()
#    lines.sort(reverse=True)
#    for line in lines:
#        print(line.strip())
#    pass


#teacher.ver

#1. line 불러오기
with open('mulcam.txt','r') as f:
    lines = f.readlines()

#2. 뒤집기
lines.reverse()

#3.line 작성하기
with open('mulcam.txt','w') as f:
    for line in lines:
        f.write(lines)