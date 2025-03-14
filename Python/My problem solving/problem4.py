# Write a program that will give you the sum of 3 digits
num1, num2, num3 = map(int, input("Enter numbers separated by space: ").split())

sum = num1 + num2 + num3

print(f"sum of the numbers is: {sum}")