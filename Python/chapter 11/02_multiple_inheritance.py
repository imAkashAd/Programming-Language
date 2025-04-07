class Employee():
    company = "ITC"
    name = "Default Name"
    def show(self):
        print(f"The name is {self.name} and the Company is {self.company}")

class coder:
    language = "Python"
    def printLanguage(self):
        print(f"Out of all language your language is : {self.language}")

class Programmer(Employee, coder):
    company = "ITC Company"
    def showLanguage(self):
        print(f"The name is {self.name} and he is good with {self.language} language.")

a = Employee()
b = Programmer()

b.show()
b.printLanguage()
b.showLanguage()