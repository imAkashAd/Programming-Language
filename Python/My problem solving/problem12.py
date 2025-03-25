# Write a program to find the volume of the cylinder. Also find the cost when ,when the cost of 1litre milk is 40Rs.
def volume(radius, height):
    cyl_volume = 3.1416 * radius * height
    return cyl_volume

radius = int(input("Enter the radius of cylinder: "))
height = int(input("Enter the height of cylinder: "))

print(f"The volume of the cylinder is : {volume(radius, height)} Cubic Unit")


def milk():
    cost = 40 * volume(radius, height)
    return cost

print(f"The cost of total milk is: {milk()} Rs.")