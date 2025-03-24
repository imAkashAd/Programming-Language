def sum(n):
    if n == 1:
        return 1
    return sum(n-1) + n
n = int(input("Enter the ending number: "))
print(f"The sum of the numbers is : {sum(n)}")