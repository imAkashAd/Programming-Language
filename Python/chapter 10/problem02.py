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

n = int(input("Enter the number: "))
calc = calculator(n)
calc.square()
calc.qube()
calc.squareroot()