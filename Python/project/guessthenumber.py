import random

n = random.randint(1, 100)

guesses = 0
a = -1
while(a != n):
    a = int(input("Enter any number between 1 to 100: "))
    if(a == n):
        print("you are correct.")
        break
    if(a>n):
        print("choose lower number please.")