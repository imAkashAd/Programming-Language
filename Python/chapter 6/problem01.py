a, b, c, d = map(int, input("Enter four number: ").split())

if (a>b) and (a>c) and (a>d) :
    print(f"{a} is the largest number")

elif (b>a) and (b>c) and (b>d) :
    print(f"{b} is the largest number")

elif (c>a) and (c>b) and (c>d) :
    print(f"{c} is the largest number")

else :
    print(f"{d} is the largest number")