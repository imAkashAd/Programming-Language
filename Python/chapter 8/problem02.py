f = int(input("Enter farhenheit temp value: "))

def f_to_c(f):
    c = 5*(f-32)/9
    return c
print(f"Converted celcius value is: {round(f_to_c(f),2)}")