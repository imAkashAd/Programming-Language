#	Write a program that take a user inputr of three angles and will find out whether it can form a triangle or not.

a, b, c = map(int, input("Enter angle1, angle2 and angle3: ").split())

total_angle = a + b + c

if(total_angle == 180):
    print("It is a triagle.")
else:
    print("Not a triangle.")