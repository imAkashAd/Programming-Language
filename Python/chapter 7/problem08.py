n = int(input("Enter line numbers: "))

if(n > 0):
    for i in range(1, n+1):
        print("*"*(i), end="")
        print()
else:
    print("Wrong input.")