class Employee:
    language = "Python"
    salary = 20000000

    def getInfo(self):      #method
        print(f"The language is: {self.language} and The salary is: {self.salary}")
    @staticmethod   #if we don't want to pass object. we can make it static method using @
    def greet():
        print("Good Morning.")

Akash = Employee()
# Akash.language = "JavaScripts"
Akash.greet()
Akash.getInfo()