'''	Write a program that will give you the in hand salary after deduction of 
HRA(10%),DA(5%),PF(3%), and tax(if salary is between 5-11 lakh–10%),(11-20lakh–20%),
(20< _   – 30%)(0-1lakh print k).'''

def salary(sa):
    HRA = 0.1
    DA = 0.05
    PF = 0.03
    Vat_5to10 = 0.1
    Vat_11to20 = 0.2
    Vat_upto20 = 0.3
    if (sa <= 0):
        print("Invalid salary.")
    elif (sa <= 100000):
        print(f"Your hand salary after deducting all charges is: {sa} taka.") 
    elif (100000 < sa <= 500000):
        sa1 = sa - (sa * HRA) - (sa * DA) - (sa * PF)
        print(f"Your hand salary after deducting all charges is: {sa1} taka.") 
    elif (500000 < sa <= 1100000):
        sa2 = sa - (sa * HRA) - (sa * DA) - (sa * PF) - (sa * Vat_5to10)
        print(f"Your hand salary after deducting all charges is: {sa2} taka.") 
    elif (1100000 < sa <= 2000000):
        sa3 = sa - (sa * HRA) - (sa * DA) - (sa * PF) - (sa * Vat_11to20)
        print(f"Your hand salary after deducting all charges is: {sa3} taka.") 
    elif (sa > 2000000):
        sa4 = sa - (sa * HRA) - (sa * DA) - (sa * PF) - (sa * Vat_upto20)
        print(f"Your hand salary after deducting all charges is: {sa4} taka.")
    else:
        print("Wrong input.")

sa = int(input("Enter employee's salary: "))
Hand_salary = salary(sa)