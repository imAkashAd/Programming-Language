line = int(input("Enter line numbers: "))

if(line >= 0):
    for i in range(1, line+1):
        space = " "
        star = "*"
        print(space*(line - i), end="")
        print(star*(2*i - 1), end="")
        print()
else:
    print("wrong input.")