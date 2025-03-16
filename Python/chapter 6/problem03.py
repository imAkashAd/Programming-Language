# writing a program to check a message wether is spam or not.

m1 = "make a lot of money"
m2 = "buy now"
m3 = "click here"
m4 = "you have got a gift"

message = input("Enter a comment: ")

if (m1 in message) or (m2 in message) or (m3 in message) or (m4 in message) :
    print("This message is a spam.")
else :
    print("This message is not a spam.")