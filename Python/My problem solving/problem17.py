#	Write a program that will check whether the number is armstrong number or not.

def armstrong(number):
    digits = [int(digit) for digit in str(number)]
    power = len(digits)

    armsum = sum(digit ** power for digit in digits)
    return armsum == number
    
number = int(input("Enter number to check whether it's armstrong or not: "))

if armstrong(number):
    print(f"{number} is armstrong")
else:
    print(f"{number} is not a armstrong number")