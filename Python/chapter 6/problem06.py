Marks = float(input("Enter marks: "))

if (0 <= Marks <= 100) :
    if (Marks >= 90) :
        print(f"Your obtained total {Marks} marks and you have got Excelent.")
    elif (Marks >= 80) :
        print(f"Your obtained total {Marks} marks and you have got A.")
    elif (Marks >= 70) :
        print(f"Your obtained total {Marks} marks and you have got B.")
    elif (Marks >= 60) :
        print(f"Your obtained total {Marks} marks and you have got C.")
    elif (Marks >= 50) :
        print(f"Your obtained total {Marks} marks and you have got D.")
    else :
        print(f"You obtained total {Marks} marks and you are failed.")
else :
    print("Wrong mark entered.")        
        