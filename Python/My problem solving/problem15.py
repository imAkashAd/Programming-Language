#	Write a program that will determine weather when the value of temperature and humidity is provided by the user.
	# TEMPERATURE(C)      HUMIDITY(%)      WEATHER

	# >= 30                             >=90                Hot and Humid
	# >= 30                             < 90                 Hot
	# <30                                >= 90               Cool and Humid
	# <30                                 <90                 Cool


def temp(tem, hum):
    if(tem >= 30 and hum >= 90):
        print("hot and humid")
    elif(tem >= 30 and hum < 90):
        print("hot")
    elif(tem < 30 and hum >= 90):
        print("cool abd humid")
    elif(tem < 30 and hum < 90):
        print("cool")
    else:
        print("something is wrong")
    return ""
tem = int(input("Enter temparature value: "))
hum = int(input("Enter humidity value: "))

result = temp(tem, hum)
print(f"The weather condition is: {result}")