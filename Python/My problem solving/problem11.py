# Write a program to find the simple interest when the value of principle,rate of interest and time period is given.

principle_amount = int(input("Enter principle ammount: "))
rate_of_interest = float(input("Enter rate of interest: "))
time = float(input("Enter time period in year: "))

print(f"Principle amount is {principle_amount}")
print(f"Rate of interest is {rate_of_interest}%")
print(f"Period of time is {time} year(s)")

simple_interest = principle_amount * (rate_of_interest / 100) * time

print(f"Your simple interest amount is {simple_interest} taka in {time} years with {rate_of_interest}% interest rate over {principle_amount} taka")