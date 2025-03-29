import math

class calculator:
    def __init__(self, num):
        self.num = num

    def square(self):
        square = self.num * self.num
        print(f"The square of {self.num} is : {square}")

    def qube(self):
        qube = self.num * self.num * self.num
        print(f"The qube of {self.num} is : {qube}")

    def squareroot(self):
        squareroot = math.sqrt(n)
        print(f"The square root of {self.num} is : {squareroot}")

    @staticmethod
    def greet():
        print("Hello i'm practicing.")

n = int(input("Enter the number: "))
calc = calculator(n)
calc.greet()
calc.square()
calc.qube()
calc.squareroot()