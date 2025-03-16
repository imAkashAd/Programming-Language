mark1, mark2, mark3 =  map(int, input("Enter marks of three subject out of 100: ").split())

if (0 <= mark1 <= 100) and (0 <= mark2 <= 100) and (0 <=mark3 <= 100) :
    total_percentage = (( mark1 + mark2 +mark3 )*100) /300
    if total_percentage >= 40 and (mark1 >= 33) and (mark2 >=33) and (mark3 >=33):
        print(f"You've got {total_percentage} and Your're passed. Congratulations.")
    else:
        print(f"You're failed. You have got {total_percentage}")

else :
    print("You have entered wrong marks.")
