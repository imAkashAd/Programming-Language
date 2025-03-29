with open("writefile.txt") as f:
    content = f.read()

with open("writefilecopy.txt", "w") as f:
    f.write(content)