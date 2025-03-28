with open("writefile.txt") as f:
    #print(f.read())
    file = f.read()

if ("Akash" in file):
    print("Akash is in the file")
else:
    print("Akash is not in the file")

f.close()