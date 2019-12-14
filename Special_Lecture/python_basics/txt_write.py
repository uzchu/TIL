f = open('mulcam.txt','w')
for i in range(10):
    f.write(f"This is line {i}. \n")
    pass
f.close()

#read write
with open('mulcam2.txt','w') as f:
    for i in range(10):
        f.write(f"This is line {i}. \n")
        pass
    f.close()
    pass

#read mode
with open('mulcam.txt','r') as f:
    lines = f.readlines()
    lines.sort(reverse=True)
    for line in lines:
        print(line.strip())
    pass

