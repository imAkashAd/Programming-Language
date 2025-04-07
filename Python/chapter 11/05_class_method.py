class value:
    a = 1

    @classmethod
    def show(cls):
        print(f"The value is of a is {cls.a}")
e = value()
e.a = 45

e.show()