f = open("writefile.txt")

# lines = f.readlines()

# print(lines)

'''line1 = f.readline()
print(line1)
line2 = f.readline()
print(line2)
line3 = f.readline()
print(line3)
line4 = f.readline()
print(line4)
'''
#let's do it with loop

line = f.readline()
while(line != ""):
    print(line)
    line = f.readline()

f.close()
