# Write a program that will tell whether the given year is a leap year or not.

year = int(input("Enter a year to check it's leap status: "))

if year % 4 == 0 and year % 100 != 0 or year % 400 == 0 :
    print(f"{year} is a leap year.")

elif year <= 0:
    print("you have entered invalid year.")

else :
    print(f"{year} is not a leap year.")