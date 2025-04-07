class Employee:
    def __init__(self):
        print("Constructor of Employee")
    Name = "The name is Akash"

class Programmer(Employee):
    def __init__(self):
        super().__init__()
        print("Constuctor of Programmer")
    prog = "Akash is a programmer and employee"

class Manager(Programmer):
    def __init__(self):
        super().__init__()
        print("Constructor of Manager")
    man = "Akash is a manager and programmer and employee"

# obj = Employee()

obj = Manager()
print(obj.Name)
print(obj.prog)
print(obj.man)