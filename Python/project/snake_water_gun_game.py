import random

computer_choice = random.choice([-1, 0, 1])

your_turn = input("Enter you choice between s, w, g: ")
your_choice = {"s":1, "w":-1, "g":0}
reverse_choice = {1:"Snake", -1:"Water", 0:"Gun"}

you = your_choice[your_turn]

print(f"You choose: {reverse_choice[you]}")
print(f"Computer choose: {reverse_choice[computer_choice]}")

if (computer_choice == you):
    print("It's a draw.")
else:
    if (computer_choice == -1 and you == 1):
        print("You win!")
    elif (computer_choice == -1 and you == 0):
        print("You lose!")
    elif (computer_choice == 1 and you == -1):
        print("You lose!")
    elif (computer_choice == 1 and you == 0):
        print("You win!")
    elif (computer_choice == 0 and you == 1):
        print("You lose!")
    elif (computer_choice == 0 and you == -1):
        print("You win!")
    else:
        print("Something went wrong!")