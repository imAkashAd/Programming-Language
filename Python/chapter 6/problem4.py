Uname = input("Enter a username: ")

character = len(Uname)

if (character >= 10) :
    print("This username contains more than 10 letter.")
elif (character <= 0) :
    print("Please fill a valid username.")
else :
    print("This username contains less than 10 letter.")

