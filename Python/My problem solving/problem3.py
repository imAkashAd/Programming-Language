# User will input (2numbers).Write a program to swap the numbers

input = int(input("Enter 2 digit value: "))

if input >= 10 and input <=99:
    result = int((input % 10)*10 + (input / 10))
    print(f"reverse number is {result}")
else:
    print("Wrong input.")
