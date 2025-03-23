last_num = int(input("Enter the last number: "))

factorial = 1
if(last_num >= 0):
    for i in range(1, last_num+1):
        factorial = factorial * i
    print(factorial)
else:
    print("wrong input")