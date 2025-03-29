class Employee:      #class
    # name = "Akash"
    language = "Python" #These are class attributes
    Salary = 20000000

Akash = Employee()  #object
Akash.language = "JavaScript" #Here Akash.name is object/instance attribute
print(Akash.language, Akash.Salary) #instance attributes take preference over class attributes duiring assignment and retrieval
