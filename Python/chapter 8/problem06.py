def inches(n):
    cm = 2.54 * n
    return cm
n = int(input("Enter inches to convert to cm: "))
print(f"Converted inches = {inches(n)} CM")