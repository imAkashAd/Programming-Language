# User will input (3ages).Find the oldest one

age1 = int(input("Enter first age: "))
age2 = int(input("Enter second age: "))
age3 = int(input("Enter third age: "))

if age1 > age2 and age1 > age3 :
    print(f"{age1} is oldest")
elif age2 > age1 and age2 > age3 :
    print(f"{age2} is oldest")
else :
    print(f"{age3} is oldest.")