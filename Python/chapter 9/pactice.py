#file reading and writing

# file reading-
'''
f = open("writefile.txt")

data = f.read()
print(data)

f.close()
'''

#file writing
str = "Hey It's Akash. I want to be a software engineer."

f = open("filewrite.txt", "w")
f.write(str)

f.close()