# Write a program that will tell whether the number entered by the user is odd or even.
number = int(input("Enter a number: "))

if number % 2 == 0 :
    print(f"{number} is an even number.")

elif number <= 0:
    print("wrong input.")

else :
    print(f"{number} is an odd number")