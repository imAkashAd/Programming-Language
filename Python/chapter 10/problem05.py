class BusTicket:

    def __init__(self, Coach_no):
        self.Coach_no = Coach_no

    def Booking(self, Departure, Arrival):
        print(f"The ticket of Coach no {self.Coach_no} is Booked for going {Departure} to {Arrival}")

    def Status(self):
        print(f"Coach number {self.Coach_no} will depart at 05:15 AM from Mirpur 10.")

    def Fare(self, fare, Departure, Arrival):
        print(f"The fare from {Departure} to {Arrival} is {fare}tk.")

Coach_no = input("Enter the Coach number of the bus: ")
Departure = input("Enter Departure point: ")
Arrival = input("Enter Arrival point: ")
fare = int(input("Enter the ticket fare: "))

Ticket = BusTicket(Coach_no)
Ticket.Booking(Departure, Arrival)
Ticket.Status()
Ticket.Fare(fare, Departure, Arrival)