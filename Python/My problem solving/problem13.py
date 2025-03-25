# Write  a program that will tell whether the given number is divisible by 3 & 6.
def devisible(number):
    if (number%3 == 0) and (number%6 == 0):
        return True
    else:
        return False

number = int(input("Enter a number to check whether it's devisible 3 & 6 or not: "))
print(f"The number {number} is divisible by 3 & 6 : {devisible(number)}")