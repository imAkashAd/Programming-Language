#   Write a program that will take three digits from the user and add the square of each digit.
def square(a, b, c):
    sqvalue = a*a + b*b + c*c
    return sqvalue

a, b, c = map(int, input("Enter the value of a: ").split())
result = square(a, b, c)
print(result)