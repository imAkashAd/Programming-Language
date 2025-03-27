import random

computer = random.choice([-1, 0, 1])

turn = input("Enter your turn: ")
youDict = {"r": -1, "p": 0, "s": 1}
reverse_dict = {-1:"Rock", 0:"Paper", 1:"Sissor"}

you = youDict[turn]

print(f"You choose {reverse_dict[you]}")
print(f"Computer choose {reverse_dict[computer]}")

if (computer == you):
    print("It's a draw.")
else: 
    if(computer == -1 and you == 0):
        print("You win.")
    elif(computer == -1 and you == 1):
        print("You lose.")
    elif(computer == 1 and you == -1):
        print("You win.")
    elif(computer == 1 and you == 0):
        print("You lose.")
    elif(computer == 0 and you == 1):
        print("You win.")
    elif(computer == 0 and you == -1):
        print("You lose.")
    else:
        print("Something went wrong.")