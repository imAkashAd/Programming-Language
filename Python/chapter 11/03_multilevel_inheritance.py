class Employee:
    Name = "The name is Akash"

class Programmer(Employee):
    prog = "Akash is a programmer and employee"

class Manager(Programmer):
    man = "Akash is a manager and programmer and employee"

# obj = Employee()

obj = Manager()
print(obj.Name)
print(obj.prog)
print(obj.man)