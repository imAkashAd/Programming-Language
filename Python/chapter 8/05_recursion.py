def factorial(n):
    if n == 1 or n == 0:
        return 1
    
    return n * factorial(n-1)
n = int(input("Enter the number to see factorial: "))
print(f"The factorial of the number is : {factorial(n)}")