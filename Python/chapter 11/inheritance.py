class Employee():
    company = "ITC"
    name = "Default Name"
    def show(self):
        print(f"The name is {self.name} and the Company is {self.company}")

class Programmer(Employee):
    company = "ITC Company"
    

a = Employee()
print(a.company, a.name)