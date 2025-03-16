# Write a program that will tell whether the number entered by the user is odd or even.
number = int(input("Enter a number: "))

if number % 2 == 0 :
    print(f"{number} is an even number.")
else :
    print(f"{number} is an odd number")