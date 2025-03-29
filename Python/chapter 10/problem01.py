class Programmer:
    company = "Microsoft"

    def __init__(self, name, salary, pincode):
        self.name = name
        self.salary = salary
        self.pincode = pincode
    
info = Programmer("Akash", "20000000", 1216)
print(info.name, info.salary, info.pincode, info.company)

info1 = Programmer("Roshni", "20000000", 1216)
print(info1.name, info1.salary, info1.pincode, info1.company)