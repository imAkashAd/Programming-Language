#	Write a program that will take user input of cost price and selling price and determines whether its a loss or a profit.

cost_price = int(input("Enter the buying price: "))
selling_price = int(input("Enter the selling price: "))
if(cost_price >=0 and selling_price >= 0):
    if(selling_price > cost_price):
        profit = selling_price - cost_price
        print(f"You gain profit from selling. Your profit amount is {profit}")
    elif(selling_price == cost_price):
        print("You neither get profit or loss.")
    else:
        loss = cost_price - selling_price
        print(f"Bad luck. You have done loss. Loss amount is {loss}")
else:
    print("Price can't be negative.")