# Write a program that will take user input of (4 digits number) and check whether the number is narcissist/Armstrong number or not.

def armstrong(number):
    digits = [int(digit) for digit in str(number)]
    power = len(digits)

    armsum = sum(digit ** power for digit in digits)

    return armsum == number

number = int(input("Enter number: "))
if armstrong(number):
    print("armstrong")
else:
    print("not armstrong")