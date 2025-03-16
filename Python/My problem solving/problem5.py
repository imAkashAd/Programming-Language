# Write a program that will reverse a four digit number. Also it checks whether the reverse is true(Palindrome).

input = int(input("Enter a 4 digit number: "))

if input >= 1000 and input <= 9999 :
    reverse_number = int(str(input)[::-1])
    print(f"The reverse number is : {reverse_number}")

    if input==reverse_number:
        print("It is a palindrom number.")

else:
    print("Wrong input.")