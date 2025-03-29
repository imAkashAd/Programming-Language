class Employee:
    language = "Python"
    salary = 20000000

    def __init__(self, name, language, salary):     #dunder method which is automatically called
        self.name = name
        self.language = language
        self.salary = salary
        print("I'm creating an object")

    def getInfo(self):      #method
        print(f"The language is: {self.language} and The salary is: {self.salary}")
    @staticmethod   #if we don't want to pass object. we can make it static method using @
    def greet():
        print("Good Morning.")

Akash = Employee("Akash", "Python", 30000000)
# Akash.language = "JavaScripts"
Akash.greet()
Akash.getInfo()