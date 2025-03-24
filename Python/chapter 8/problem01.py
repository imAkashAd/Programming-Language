a, b, c = map(int, input("Enter three number separated by space: ").split())
print(f"The numbers you have entered: {a}, {b}, {c}")

def largest(a , b ,c):
    if a>b and a>c:
        return a
    elif b>a and b>c:
        return b
    else:
        return c
print(f"The largest number is : {largest(a, b, c)}")